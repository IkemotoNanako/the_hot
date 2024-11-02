import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/ui/controller/answers_controller.dart';
import 'package:flutter_hackathon_2024/ui/page/game/sample_component.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HotGame extends FlameGame with RiverpodGameMixin {
  @override
  Color backgroundColor() => Colors.white;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(SampleComponent());
    final snap = ref.read(listenAnswersUsecaseProvider).listenAnswers();
    snap.listen((event) {
      print('event');
      add(SampleComponent());
    });
  }
}
