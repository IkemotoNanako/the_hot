import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class RandomizeQuestionUseCase {
  final CommonRepository _repository;

  RandomizeQuestionUseCase(this._repository);

  Future<List<Question>> execute() async {
    final allQuestions = _repository.questionAll;
    // リストをシャッフル
    allQuestions.shuffle();
    // シャッフルされたリストから最初の3つの要素を取得
    return allQuestions.take(3).toList();
  }
}
