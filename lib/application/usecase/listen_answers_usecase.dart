import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';

class ListenAnswersUsecase {
  final CommonRepository _repository;
  ListenAnswersUsecase(this._repository);

  Stream<List<Answer>> listenAnswers() {
    return Stream.periodic(const Duration(seconds: 1), (count) {
      return List.generate(count, (index) {
        return Answer(
            id: index,
            hotItem: HotItem(
                id: index,
                title: "title",
                description: "description",
                imageUrl: "imageUrl",
                searchCondition: SearchCondition(latitude: 0, longitude: 0)));
      });
    });
    return _repository.fetchAnswerStream();
  }
}
