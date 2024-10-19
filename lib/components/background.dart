import 'dart:math';

import 'package:flame/components.dart';
import 'package:forge2d_game/components/game.dart';

class Background extends SpriteComponent with HasGameReference<MyPhysicsGame> {
  Background({required super.sprite})
      : super(
          anchor: Anchor.center,
          position: Vector2(0, 0),
        );

  @override
  void onMount() {
    super.onMount();

    size = Vector2.all(max(
      game.camera.visibleWorldRect.width,
      game.camera.visibleWorldRect.height,
    ));
  }
}
