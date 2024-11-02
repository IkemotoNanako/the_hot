import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/controller/answers_controller.dart';
import 'package:flutter_hackathon_2024/ui/page/game/sample_component.dart';

class HotGame extends FlameGame with RiverpodGameMixin {
  @override
  Color backgroundColor() => Colors.white;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    final response = await http.get(Uri.parse(
        'https://udulgbhamonxiegmurxx.supabase.co/storage/v1/object/public/hot_items/flutter.png?t=2024-11-02T14%3A19%3A08.479Z'));
    final image = await decodeImageFromList(response.bodyBytes);
    final snap = ref.read(answersControllerProvider);
    snap.listen((event) {
      // ランダムに位置を決める
      final x = size.x / 2 + size.x * (Random().nextDouble() - 0.5);

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
