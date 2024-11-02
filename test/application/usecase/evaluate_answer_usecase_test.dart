import 'package:flutter_hackathon_2024/application/usecase/evaluate_answer_usecase.dart';
import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'evaluate_answer_usecase_test.mocks.dart';

@GenerateMocks([CommonRepository])
void main() {
  group('EvaluateAnswerUsecase', () {
    late CommonRepository mockRepository;
    late EvaluateAnswerUsecase usecase;

    setUp(() {
      mockRepository = MockCommonRepository();
      usecase = EvaluateAnswerUsecase(mockRepository);
    });

    test('execute should return the itemId with the max weight', () {
      // モックの設定
      when(mockRepository.hotItemAll).thenReturn([
        generateHotItem(1),
        generateHotItem(2),
        generateHotItem(3),
      ]);
      when(mockRepository.questionAll).thenReturn([
        generateQuestion(1, {1: 1, 2: 2, 3: 3}),
        generateQuestion(2, {1: -1, 2: -2, 3: -3}),
      ]);

      // テストデータ
      final questionResult = [
        QuestionResult(questionId: 1, isYes: true),
        QuestionResult(questionId: 2, isYes: false),
      ];

      // executeの実行
      final result = usecase.execute(questionResult);

      // 期待値の検証
      expect(result,
          Answer(hotItem: generateHotItem(3))); // weightの合計が最も大きいitemIdは3
    });

    test('execute should return the itemId with the max weight 2', () {
      // モックの設定
      when(mockRepository.hotItemAll).thenReturn([
        generateHotItem(1),
        generateHotItem(2),
        generateHotItem(3),
      ]);
      when(mockRepository.questionAll).thenReturn([
        generateQuestion(1, {1: 1, 2: 2, 3: 3}),
        generateQuestion(2, {1: -1, 2: -2, 3: -3}),
        generateQuestion(3, {1: -7, 2: -14, 3: -12}),
      ]);

      // テストデータ
      final questionResult = [
        QuestionResult(questionId: 1, isYes: true),
        QuestionResult(questionId: 2, isYes: false),
        QuestionResult(questionId: 3, isYes: true)
      ];

      // executeの実行
      final result = usecase.execute(questionResult);

      // 期待値の検証
      expect(result,
          Answer(hotItem: generateHotItem(1))); // weightの合計が最も大きいitemIdは3
    });

    test('findItemIdWithMaxWeight should return the itemId with the max weight',
        () {
      // テストデータ
      final map = {1: 1, 2: 2, 3: 3};

      // findItemIdWithMaxWeightの実行
      final result = usecase.findItemIdWithMaxWeight(map);

      // 期待値の検証
      expect(result, 3);
    });

    test('findItemIdWithMaxWeight should return null when the map is empty',
        () {
      // テストデータ
      final map = <int, int>{}; // 空のMap

      // findItemIdWithMaxWeightの実行
      final result = usecase.findItemIdWithMaxWeight(map);

      // 期待値の検証
      expect(result, null);
    });
  });
}

HotItem generateHotItem(int id) {
  return HotItem(
    id: id,
    title: 'HotItem $id',
    description: 'Description $id',
    imageUrl: 'https://example.com/image$id.jpg',
    searchCondition: const SearchCondition(latitude: 100.0, longitude: 100.0),
  );
}

Question generateQuestion(int id, Map<int, int> weight) {
  return Question(
    id: id,
    description: 'Question $id',
    weight: weight,
    imageUrl: 'https://example.com/image$id.jpg',
  );
}
