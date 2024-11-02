import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_circle_button.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_filled_button.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_outlined_button.dart';
import 'package:flutter_hackathon_2024/ui/page/game/hot_game.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<RiverpodAwareGameWidgetState> gameWidgetKey =
    GlobalKey<RiverpodAwareGameWidgetState>();

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
          const _Game(),
          Center(
            child: CustomCircleButton(
              onPressed: () {
                context.go(const QuestionPageRoute().location);
              },
              label: 'START',
              colorType: ButtonColorType.primary,
            ),
          ),
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
    return RiverpodAwareGameWidget(
      game: HotGame(),
      key: gameWidgetKey,
    );
  }
}
