import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/component/password_text_field.dart';
import 'package:flutter_hackathon_2024/ui/controller/sign_in_controller.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signInControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                onChanged: (value) => ref
                    .read(signInControllerProvider.notifier)
                    .updateEmailValue(value),
                keyboardType: TextInputType.emailAddress,
              ),
              const Gap(4),
              PasswordTextField(
                hintText: 'Password',
                onChanged: (value) => ref
                    .read(signInControllerProvider.notifier)
                    .updatePasswordValue(value),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      context.go(const SignUpPageRoute().location);
                    },
                    child: const Text('新規登録はこちら')),
              ),
              const Gap(48),
              ElevatedButton(
                onPressed: () async {
                  await ref.read(signInControllerProvider.notifier).signIn();
                },
                child: state.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(),
                      )
                    : const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
