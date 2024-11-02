import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final answersControllerProvider = Provider<Stream<List<Answer>>>((ref) {
  // Todo: Supabaseと繋げる

  return ref.watch(listenAnswersUsecaseProvider).listenAnswers();
});
