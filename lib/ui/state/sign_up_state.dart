import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isLoading,
    @Default(true) bool isEmailValid,
    @Default(true) bool isPasswordValid,
    @Default(true) bool isConfirmPasswordMatch,
  }) = _SignUpState;
}
