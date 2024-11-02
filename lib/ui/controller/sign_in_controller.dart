import 'package:flutter_hackathon_2024/ui/state/sign_in_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/provider/usecase_providers.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  SignInState build() {
    return const SignInState();
  }

  void updateEmailValue(String email) {
    state = state.copyWith(email: email);
  }

  void updatePasswordValue(String password) {
    state = state.copyWith(password: password);
  }

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true);
    await ref.read(signInUsecaseProvider).signIn(
          email: state.email,
          password: state.password,
        );
    state = state.copyWith(isLoading: false);
  }
}
