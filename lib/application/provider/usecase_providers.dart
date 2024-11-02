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
