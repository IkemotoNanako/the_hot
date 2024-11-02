import 'package:flutter_hackathon_2024/infrastructure/repository/auth_repository.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/sample_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_providers.g.dart';

@riverpod
SampleRepository sampleRepository(SampleRepositoryRef ref) {
  return SampleRepository();
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository();
}

@Riverpod(keepAlive: true)
CommonRepository commonRepository(CommonRepositoryRef ref) {
  return CommonRepository();
}
