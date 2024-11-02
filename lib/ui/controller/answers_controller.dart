import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'answers_controller.g.dart';

@riverpod
Stream<List<Answer>> answersController(AnswersControllerRef ref) {
  return ref.read(listenAnswersUsecaseProvider).listenAnswers();
}
