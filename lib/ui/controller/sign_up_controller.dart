import 'package:email_validator/email_validator.dart';
import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/ui/state/sign_up_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  SignUpState build() {
    return const SignUpState();
  }

  void updateEmailValue(String email) {
    state = state.copyWith(email: email);
    if (!state.isEmailValid && _mailAddressValidation()) {
      state = state.copyWith(isEmailValid: true);
    }
  }

  void updatePasswordValue(String password) {
    state = state.copyWith(password: password);
    if (!state.isPasswordValid && _passwordValidation()) {
      state = state.copyWith(isPasswordValid: true);
    }
  }

  void updateConfirmPasswordValue(String confirmPassword) {
    state = state.copyWith(confirmPassword: confirmPassword);
    if (!state.isConfirmPasswordMatch && _confirmPassword()) {
      state = state.copyWith(isConfirmPasswordMatch: true);
    }
  }

  Future<bool> signUp() async {
    state = state.copyWith(isLoading: true);
    if (!validate()) {
      state = state.copyWith(isLoading: false);
      return false;
    }
    await ref.read(signUpUsecaseProvider).signUp(
          email: state.email,
          password: state.password,
        );
    state = state.copyWith(isLoading: false);
    return true;
  }

  bool validate() {
    return _mailAddressValidation() &&
        _passwordValidation() &&
        _confirmPassword();
  }

  bool _mailAddressValidation() {
    if (!EmailValidator.validate(state.email)) {
      state = state.copyWith(isEmailValid: false);
      return false;
    }
    return true;
  }

  bool _passwordValidation() {
    if (state.password.length < 6) {
      state = state.copyWith(isPasswordValid: false);
      return false;
    }
    return true;
  }

  bool _confirmPassword() {
    if (state.password != state.confirmPassword) {
      state = state.copyWith(isConfirmPasswordMatch: false);
      return false;
    }
    return true;
  }
}
