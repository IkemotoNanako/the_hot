import 'dart:math';
import 'package:http/http.dart' as http;

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
    bool isFirstGet = true;
    snap.listen((event) async {
      if (isFirstGet) {
        isFirstGet = false;
        return;
      }
      final imageUrl = event.last.hotItem.imageUrl;
      final response = await http.get(Uri.parse(imageUrl));
      final image = await decodeImageFromList(response.bodyBytes);

      // ランダムに位置を決める
      final x = size.x / 2 + size.x * (Random().nextDouble() - 0.5) * 0.9;

      // ランダムにサイズを決める 0.8~1.2倍
      final scale = 0.8 + Random().nextDouble() * 0.4;
      final componentSize = Vector2(100, 100) * scale;

      // ランダムに角速度を決める -1~1
      final angularVelocity = Random().nextDouble() * 2 - 1;

      add(SampleComponent(
        position: Vector2(x, 0),
        image: image,
        size: componentSize,
        angularVelocity: angularVelocity,
      ));
    });
  }
}
