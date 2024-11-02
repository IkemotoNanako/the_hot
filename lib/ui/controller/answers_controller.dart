import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'answers_controller.g.dart';

@riverpod
Stream<List<Answer>> answersController(AnswersControllerRef ref) {
  // 1秒に一回からの配列を返す
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
}
