import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class SampleComponent extends RectangleComponent {
  SampleComponent({required Vector2 super.position})
      : super(
            size: Vector2(100, 100),
            paint: Paint()..color = Colors.red,
            anchor: Anchor.center);

  Vector2 velocity = Vector2(0, 0);

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt;
  }

  @override
  void onLoad() {
    super.onLoad();
    velocity = Vector2(0, 100);
  }
}
