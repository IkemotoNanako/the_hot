import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final answersControllerProvider = Provider<Stream<List<Answer>>>((ref) {
  // Todo: Supabaseと繋げる
  return Stream.periodic(const Duration(seconds: 1), (count) {
    return List.generate(count, (index) {
      return Answer(
          hotItem: HotItem(
              id: index,
              title: "title",
              description: "description",
              imageUrl: "imageUrl",
              searchCondition: SearchCondition(latitude: 0, longitude: 0)));
    });
  });
  // return ref.watch(listenAnswersUsecaseProvider).listenAnswers();
});
