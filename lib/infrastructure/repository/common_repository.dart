import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
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

  Future<void> setAnswer(HotItem hotItem) async {
    return;
  }

  Stream<Question> fetchQuestionStream() {
    return const Stream.empty();
  }
}
