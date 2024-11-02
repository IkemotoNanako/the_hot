import 'package:flutter_hackathon_2024/infrastructure/repository/auth_repository.dart';

class SignOutUsecase {
  final AuthRepository _authRepository;

  SignOutUsecase(this._authRepository);

  Future<void> invoke() async {
    await _authRepository.signOut();
  }
}
