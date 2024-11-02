import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:go_router/go_router.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: OutlinedButton(
              onPressed: () {
                context.go(const TopPageRoute().location);
              },
              child: const Text('ホームに戻る'))),
    );
  }
}
