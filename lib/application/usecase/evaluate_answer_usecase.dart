import 'dart:math';

import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class EvaluateAnswerUsecase {
  final CommonRepository _repository;

  EvaluateAnswerUsecase(this._repository);

  Answer execute(List<QuestionResult> questionResult) {
    final hotItems = _repository.hotItemAll;
    // 1. 答えられたQuestionを抽出
    // 2. そのQuestionの重みを取得
    // 3. 重みをそれぞれのHotItemで足す。isYesならプラス、falseならマイナス
    final answeredQuestionsWeight = _repository.questionAll.where((question) {
      return questionResult
          .map((result) => result.questionId)
          .contains(question.id);
    }).map((question) {
      final isYes = questionResult
          .firstWhere((result) => result.questionId == question.id)
          .isYes;
      return isYes
          ? question.weight
          : question.weight.map((key, value) => MapEntry(key, -value));
    });

    //
    final hotItemWeight = answeredQuestionsWeight.fold<Map<int, int>>(
      {},
      (previousValue, element) {
        element.forEach((key, value) {
          previousValue.update(
            key,
            (value) => value + element[key]!,
            ifAbsent: () => element[key]!,
          );
        });
        return previousValue;
      },
    );

    final answer = findItemIdWithMaxWeight(hotItemWeight);

    if (answer == null) {
      throw Exception('Answer not found');
    }

    _repository.setAnswer(AnswerForms(hotItemId: answer));

    return Answer(
      hotItem: hotItems.firstWhere((element) => element.id == answer),
    );
  }

  int? findItemIdWithMaxWeight(Map<int, int> map) {
    if (map.isEmpty) {
      return null;
    }

    int maxItemId = map.keys.first;
    int maxWeight = map[maxItemId]!;

    for (var key in map.keys) {
      if (map[key]! > maxWeight) {
        maxWeight = map[key]!;
        maxItemId = key;
      } else if (map[key] == maxWeight) {
        // ランダムで選択
        if (Random().nextBool()) {
          maxWeight = map[key]!;
          maxItemId = key;
        }
      }
    }

    return maxItemId;
  }
}
