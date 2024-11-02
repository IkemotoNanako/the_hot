import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/ui/controller/question_controller.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swipable_stack/swipable_stack.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionControllerProvider);
    final controller = ref.watch(questionControllerProvider.notifier);
    final hotItem = state.hotItem;
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            state.hotItem != null
                ? IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      context.go(const TopPageRoute().location);
                    },
                  )
                : const SizedBox.shrink(),
          ],
        ),
        body: hotItem == null
            ? _SwipeCard(
                questionList: state.questionList,
                onEvaluate: (questionResult) {
                  controller.evaluateAnswer(questionResult);
                },
              )
            : _HotItemCard(hotItem: hotItem),
      ),
    );
  }
}

class _HotItemCard extends StatelessWidget {
  const _HotItemCard({required this.hotItem});

  final HotItem hotItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize();
  }
}

class _SwipeCard extends StatelessWidget {
  _SwipeCard({
    required this.questionList,
    required this.onEvaluate,
  });

  final List<Question> questionList;
  final void Function(List<QuestionResult> questionResult) onEvaluate;

  final List<QuestionResult> questionResult = [];

  @override
  Widget build(BuildContext context) {
    return SwipableStack(
      allowVerticalSwipe: false,
      itemCount: questionList.length,
      builder: (context, properties) {
        return _QuestionCard(
          question: questionList[properties.index],
        );
      },
      onSwipeCompleted: (index, direction) {
        questionResult.add(
          QuestionResult(
            questionId: questionList[index].id,
            isYes: direction == SwipeDirection.right,
          ),
        );
        if (index == questionList.length - 1) {
          onEvaluate(questionResult);
        }
      },
      overlayBuilder: (context, properties) {
        final opacity = min(properties.swipeProgress, 1.0);
        final isRight = properties.direction == SwipeDirection.right;
        return Opacity(
          opacity: isRight ? opacity : 0,
          child: Container(
            color: isRight ? CustomColorTheme.primary : CustomColorTheme.accent,
          ),
        );
      },
    );
  }
}

class _QuestionCard extends StatelessWidget {
  const _QuestionCard({required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColorTheme.accentContainer,
    );
  }
}
