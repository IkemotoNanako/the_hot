import 'package:flutter_hackathon_2024/infrastructure/repository/auth_repository.dart';

class SignUpUsecase {
  final AuthRepository _authRepository;

  SignUpUsecase(this._authRepository);

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    return await _authRepository.signUp(
      email: email,
      password: password,
    );
  }
}
