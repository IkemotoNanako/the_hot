import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:go_router/go_router.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Center(
          child: OutlinedButton(
              onPressed: () {
                context.go(const QuestionPageRoute().location);
              },
              child: const Text('start'))),
    );
  }
}
