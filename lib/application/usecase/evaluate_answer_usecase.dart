import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:flutter_hackathon_2024/domain/user_answer.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class EvaluateAnswerUsecase {
  final CommonRepository _repository;

  EvaluateAnswerUsecase(this._repository);

  Future<Answer> execute(List<UserAnswer> userAnswers) async {
    _repository.hotItemAll;
    // Todo: 三つの答えから一つのAnswerを決定する
    // Todo: Answerを保存する
    return const Answer(
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
