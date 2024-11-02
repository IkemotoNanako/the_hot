import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
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
    return ref.read(randomizeQuestionUseCaseProvider).execute();
  }

  void evaluateAnswer(List<QuestionResult> questionResult) {
    final result =
        ref.read(evaluateAnswerUsecaseProvider).execute(questionResult);
    // ここで結果を表示する処理を書く
    state = state.copyWith(
      hotItem: result.hotItem,
    );
  }
}
