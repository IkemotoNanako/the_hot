import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/page/game/sample_component.dart';

class HotGame extends FlameGame {
  @override
  Color backgroundColor() => Colors.white;

  @override
  Future<void> onLoad() async {
    add(SampleComponent());
  }
}
