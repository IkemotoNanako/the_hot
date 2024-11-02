import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class EvaluateAnswerUsecase {
  final CommonRepository _repository;

  EvaluateAnswerUsecase(this._repository);

  Answer execute(List<QuestionResult> questionResult) {
    _repository.hotItemAll;
    // Todo: 三つの答えから一つのAnswerを決定する
    // Todo: Answerを保存する
    return const Answer(
      id: 1,
      hotItemId: 1,
    );
  }
}
