import 'package:flutter_hackathon_2024/application/usecase/evaluate_answer_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/get_master_data_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/randomize_question_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/listen_answers_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/sample_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/sign_in_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/sign_out_usecase.dart';
import 'package:flutter_hackathon_2024/application/usecase/sign_up_usecase.dart';
import 'package:flutter_hackathon_2024/infrastructure/provider/repository_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase_providers.g.dart';

@riverpod
SampleUsecase sampleUsecase(SampleUsecaseRef ref) {
  return SampleUsecase(ref.read(sampleRepositoryProvider));
}

@riverpod
SignUpUsecase signUpUsecase(SignUpUsecaseRef ref) {
  return SignUpUsecase(ref.read(authRepositoryProvider));
}

@riverpod
SignInUsecase signInUsecase(SignInUsecaseRef ref) {
  return SignInUsecase(ref.read(authRepositoryProvider));
}

@riverpod
SignOutUsecase signOutUsecase(SignOutUsecaseRef ref) {
  return SignOutUsecase(ref.read(authRepositoryProvider));
}

@riverpod
EvaluateAnswerUsecase evaluateAnswerUsecase(EvaluateAnswerUsecaseRef ref) {
  return EvaluateAnswerUsecase(ref.read(commonRepositoryProvider));
}

@riverpod
GetMasterDataUsecase getMasterDataUsecase(GetMasterDataUsecaseRef ref) {
  return GetMasterDataUsecase(ref.read(commonRepositoryProvider));
}

@riverpod
GetMasterDataUsecase getHotItemUsecase(GetHotItemUsecaseRef ref) {
  return GetMasterDataUsecase(ref.read(commonRepositoryProvider));
}

@riverpod
RandomizeQuestionUseCase randomizeQuestionUseCase(
    RandomizeQuestionUseCaseRef ref) {
  return RandomizeQuestionUseCase(ref.read(commonRepositoryProvider));
}

@riverpod
ListenAnswersUsecase listenAnswersUsecase(ListenAnswersUsecaseRef ref) {
  return ListenAnswersUsecase(ref.read(commonRepositoryProvider));
}
