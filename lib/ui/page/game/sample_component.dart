import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image;

class SampleComponent extends SpriteComponent {
  SampleComponent(
      {required this.image,
      required this.angularVelocity,
      super.position,
      super.size})
      : super(paint: Paint()..color = Colors.red, anchor: Anchor.center);

  Vector2 velocity = Vector2(0, 0);
  final ui.Image image;
  final double angularVelocity;

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt;
    // 回転
    angle += angularVelocity * dt;
  }

  @override
  void onLoad() async {
    super.onLoad();
    sprite = Sprite(image);
    velocity = Vector2(0, 100);
  }
}
