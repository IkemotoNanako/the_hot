import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';

class CommonRepository {
  Future<List<HotItem>> fetchHotItemAll() async {
    return [];
  }

  Future<List<Question>> fetchQuestionAll() async {
    return [];
  }

  Future<void> setAnswer(HotItem hotItem) async {
    return;
  }

  Stream<Question> fetchQuestionStream() {
    return Stream.empty();
  }
}
