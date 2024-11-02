import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:flutter_hackathon_2024/util/constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CommonRepository {
  final supabase = Supabase.instance.client;

  List<HotItem>? _hotItemAll;
  List<Question>? _questionAll;

  List<HotItem> get hotItemAll => _hotItemAll!;

  List<Question> get questionAll => _questionAll!;

  Future<void> fetchHotItemAll() async {
    try {
      final response = await supabase.from(tableNameHotItems).select();
      _hotItemAll = response.map((json) {
        return HotItem.fromJson(json);
      }).toList();
    } catch (e) {
      // todo: エラーハンドリング
      rethrow;
    }
  }

  Future<void> fetchQuestionAll() async {
    try {
      final response = await supabase.from(tableNameQuestions).select();
      _questionAll = response.map((json) {
        return Question.fromJson(json);
      }).toList();
    } catch (e) {
      // todo: エラーハンドリング
      rethrow;
    }
  }

  Future<void> setAnswer(AnswerForms answerForms) async {
    try {
      await supabase.from(tableNameAnswers).insert(answerForms.toJson());
    } catch (e) {
      // todo: エラーハンドリング
      rethrow;
    }
    return;
  }

  Stream<List<Answer>> fetchAnswerStream() {
    final response = supabase.from(tableNameAnswers).stream(
      primaryKey: ['id'],
    ).map(
      (event) => event
          .map(
            (json) => AnswerForms.fromJson(json),
          )
          .toList(),
    );
    if (_hotItemAll == null) {
      return const Stream.empty();
    }
    // ResponseをAnswerにマッピング
    return response.map(
      (event) {
        return event.map(
          (answerForms) {
            if (_hotItemAll == null) {
              return const Answer(
                hotItem: HotItem(
                    id: 1,
                    title: 'title',
                    imageUrl: 'imageUrl',
                    description: 'description',
                    searchCondition:
                        SearchCondition(latitude: 0, longitude: 0)),
              );
            }
            return Answer(
              hotItem: _hotItemAll!.firstWhere(
                (element) => element.id == answerForms.hotItemId,
              ),
            );
          },
        ).toList();
      },
    );
  }
}
