import 'package:flutter_hackathon_2024/infrastructure/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInUsecase {
  final AuthRepository _authRepository;

  SignInUsecase(this._authRepository);

  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    final authResponse = await _authRepository.signIn(
      email: email,
      password: password,
    );
    return authResponse.user;
  }
}
