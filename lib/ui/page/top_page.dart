import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
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
          const _Game(),
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

class _Game extends ConsumerWidget {
  const _Game();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return GameWidget(game: MyGame());
  }
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {}
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
              subtitle: Text(answers[index].hotItem.id.toString()),
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
