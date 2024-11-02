import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class GetMasterDataUsecase {
  final CommonRepository _repository;

  GetMasterDataUsecase(this._repository);

  Future<void> execute() async {
    await Future.wait([
      _repository.fetchHotItemAll(),
      _repository.fetchQuestionAll(),
    ]);
  }
}
