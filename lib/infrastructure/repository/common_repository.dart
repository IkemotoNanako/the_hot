import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';

class CommonRepository {
  List<HotItem>? _hotItemAll;
  List<Question>? _questionAll;

  List<HotItem> get hotItemAll => _hotItemAll!;
  List<Question> get questionAll => _questionAll!;

  Future<void> fetchHotItemAll() async {
    return;
  }

  Future<void> fetchQuestionAll() async {
    return;
  }

  Future<void> setAnswer(HotItem hotItem) async {
    return;
  }

  Stream<Question> fetchQuestionStream() {
    return const Stream.empty();
  }
}
