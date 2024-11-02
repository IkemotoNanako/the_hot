import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image;

class SampleComponent extends SpriteComponent {
  SampleComponent({required this.image, super.position})
      : super(
            size: Vector2(100, 100),
            paint: Paint()..color = Colors.red,
            anchor: Anchor.center);

  Vector2 velocity = Vector2(0, 0);
  final ui.Image image;

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt;
  }

  @override
  void onLoad() async {
    super.onLoad();
    this.sprite = Sprite(image);
    velocity = Vector2(0, 100);
  }
}
