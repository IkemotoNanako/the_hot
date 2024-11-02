import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
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
      hotItem: HotItem(
        id: 1,
        title: 'title',
        description: 'description',
        imageUrl: 'imageUrl',
        searchCondition: SearchCondition(latitude: 0, longitude: 0),
      ),
    );
  }
}
