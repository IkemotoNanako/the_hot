import 'dart:math';

import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/ui/controller/answers_controller.dart';
import 'package:flutter_hackathon_2024/ui/page/game/sample_component.dart';

class HotGame extends FlameGame with RiverpodGameMixin {
  @override
  Color backgroundColor() => Colors.white;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await ref.read(listenAnswersUsecaseProvider).fetchMasterData();
    final snap = ref.read(answersControllerProvider);
    snap.listen((event) {
      // ランダムに位置を決める
      final x = size.x / 2 + size.x * (Random().nextDouble() - 0.5);
      add(SampleComponent(position: Vector2(x, 0)));
    });
  }
}
