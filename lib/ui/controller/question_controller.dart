import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:flutter_hackathon_2024/ui/state/question_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'question_controller.g.dart';

@riverpod
class QuestionController extends _$QuestionController {
  @override
  QuestionState build() {
    final questionList = _fetch();
    return QuestionState(
      questionList: questionList,
    );
  }

  List<Question> _fetch() {
    // return ref.read(randomizeQuestionUseCaseProvider).execute();
    return [
      const Question(
          id: 1,
          imageUrl: 'https://placehold.jp/1600x900.png',
          description: 'ここに質問がくるよ質問質問',
          weight: {}),
      const Question(
          id: 2, imageUrl: '', description: 'ここに質問がくるよ質問質問', weight: {}),
      const Question(
          id: 3,
          imageUrl: 'https://placehold.jp/1600x900.png',
          description: 'ここに質問がくるよ質問質問',
          weight: {}),
    ];
  }

  void evaluateAnswer(List<QuestionResult> questionResult) {
    // final result =
    //     ref.read(evaluateAnswerUsecaseProvider).execute(questionResult);
    // ここで結果を表示する処理を書く
    state = state.copyWith(
      hotItem: const HotItem(
        id: 1,
        title: 'name',
        description: 'description',
        imageUrl: 'imageUrl',
        searchCondition: SearchCondition(
          latitude: 0,
          longitude: 0,
        ),
      ),
    );
  }
}
