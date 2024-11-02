import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/component/password_text_field.dart';
import 'package:flutter_hackathon_2024/ui/controller/sign_up_controller.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                onChanged: (value) => ref
                    .read(signUpControllerProvider.notifier)
                    .updateEmailValue(value),
                keyboardType: TextInputType.emailAddress,
              ),
              if (!state.isEmailValid)
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'メールアドレスを確認してください',
                    style: customTextTheme.labelSmall
                        ?.copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              const Gap(4),
              PasswordTextField(
                hintText: 'Password',
                onChanged: (value) => ref
                    .read(signUpControllerProvider.notifier)
                    .updatePasswordValue(value),
              ),
              if (!state.isPasswordValid)
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'パスワードは6文字以上で入力してください',
                    style: customTextTheme.labelSmall
                        ?.copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              const Gap(4),
              PasswordTextField(
                hintText: 'Password Confirmation',
                onChanged: (value) => ref
                    .read(signUpControllerProvider.notifier)
                    .updateConfirmPasswordValue(value),
              ),
              if (!state.isConfirmPasswordMatch)
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'パスワードが一致しません',
                      style: customTextTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.error),
                    )),
              const Gap(48),
              ElevatedButton(
                onPressed: () async {
                  final isSuccess = await ref
                      .read(signUpControllerProvider.notifier)
                      .signUp();
                  if (context.mounted && isSuccess) {
                    context.pop();
                  }
                },
                child: state.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(),
                      )
                    : const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
