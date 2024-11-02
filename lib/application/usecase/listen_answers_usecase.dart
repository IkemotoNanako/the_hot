import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class ListenAnswersUsecase {
  final CommonRepository _repository;
  ListenAnswersUsecase(this._repository);

  Stream<List<Answer>> listenAnswers() {
    return _repository.fetchAnswerStream();
  }

  Future<void> fetchMasterData() async {
    await Future.wait([
      _repository.fetchHotItemAll(),
      _repository.fetchQuestionAll(),
    ]);
  }
}
