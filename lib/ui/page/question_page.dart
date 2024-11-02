import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:flutter_hackathon_2024/domain/question_result.dart';
import 'package:flutter_hackathon_2024/ui/controller/question_controller.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';
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
        appBar: state.hotItem != null
            ? AppBar(
                surfaceTintColor: CustomColorTheme.transparent,
                backgroundColor: CustomColorTheme.transparent,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      context.go(const TopPageRoute().location);
                    },
                  ),
                ],
              )
            : null,
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
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(64),
            child: Image.network(
              hotItem.imageUrl,
              height: MediaQuery.of(context).size.width * 0.7,
              width: MediaQuery.of(context).size.width * 0.7,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox.shrink();
              },
            ),
          ),
          const SizedBox(height: 32),
          Text(
            hotItem.title,
            style: customTextTheme.headlineLarge,
          ),
          const SizedBox(height: 8),
          Text(
            hotItem.description,
            style: customTextTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColorTheme.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          '選択肢$index',
                          style: customTextTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
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
        return _OverlayCard(opacity: opacity, isRight: isRight);
      },
    );
  }
}

class _OverlayCard extends StatelessWidget {
  const _OverlayCard({
    required this.opacity,
    required this.isRight,
  });

  final double opacity;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: opacity,
          child: Container(
            color: isRight ? CustomColorTheme.primary : CustomColorTheme.accent,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(child: SizedBox.expand()),
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: CustomColorTheme.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                isRight ? Icons.circle_outlined : Icons.close,
                color: isRight
                    ? CustomColorTheme.primary
                    : CustomColorTheme.accent,
                size: 96,
              ),
            ),
            Expanded(
              child: Text(
                isRight ? 'YES' : 'NO',
                style: customTextTheme.headlineLarge?.copyWith(
                  color: CustomColorTheme.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _QuestionCard extends StatelessWidget {
  const _QuestionCard({required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          question.imageUrl,
          height: MediaQuery.of(context).size.height * 0.7,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const SizedBox.shrink();
          },
        ),
        Expanded(
          child: Container(
            color: CustomColorTheme.white,
            child: Center(
              child: Text(
                question.description,
                style: customTextTheme.bodyLarge,
              ),
            ),
          ),
        )
      ],
    );
  }
}
