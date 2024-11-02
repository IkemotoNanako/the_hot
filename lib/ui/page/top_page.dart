import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/controller/answers_controller.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          const _AnswerList(),
          Center(
              child: OutlinedButton(
                  onPressed: () {
                    context.go(const QuestionPageRoute().location);
                  },
                  child: const Text('start'))),
        ],
      ),
    );
  }
}

class _AnswerList extends ConsumerWidget {
  const _AnswerList();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return ref.watch(answersControllerProvider).when(
      data: (answers) {
        return ListView.builder(
          itemCount: answers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(answers[index].id.toString()),
              subtitle: Text(answers[index].hotItemId.toString()),
            );
          },
        );
      },
      loading: () {
        return const SizedBox.shrink();
      },
      error: (error, stackTrace) {
        return const SizedBox.shrink();
      },
    );
  }
}
