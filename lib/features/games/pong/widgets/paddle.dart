import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/services.dart';
import 'package:kingu_dev/features/games/pong/constants/paddle_movement.dart';
import 'package:kingu_dev/features/games/pong/constants/paddle_position.dart';

class Paddle extends RectangleComponent with HasGameRef, KeyboardHandler {
  Paddle({
    required super.size,
    required super.position,
    required this.paddlePosition,
  }) : super(
          anchor: Anchor.center,
        );

  PaddleMovement movement = PaddleMovement.idol;

  final PaddlePosition paddlePosition;

  static const movementSpeed = 800;

  @override
  FutureOr<void> onLoad() {
    add(RectangleHitbox());

    return super.onLoad();
  }

  @override
  void update(double dt) {
    switch (paddlePosition) {
      case PaddlePosition.left:
        if (movement == PaddleMovement.up) {
          position.y -= dt * movementSpeed;
        } else if (movement == PaddleMovement.down) {
          position.y += dt * movementSpeed;
        }

        break;
      case PaddlePosition.right:
        if (movement == PaddleMovement.up) {
          position.y -= dt * movementSpeed;
        } else if (movement == PaddleMovement.down) {
          position.y += dt * movementSpeed;
        }
        break;
    }

    // anchorはcenter。画面からはみ出ないようにする
    if (position.y - size.y / 2 < 0) {
      position.y = size.y / 2;
    } else if (position.y + size.y / 2 > gameRef.size.y) {
      position.y = gameRef.size.y - size.y / 2;
    }
  }

  @override
  bool onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    switch (paddlePosition) {
      case PaddlePosition.left:
        if (event.isKeyPressed(LogicalKeyboardKey.keyW)) {
          movement = PaddleMovement.up;
        } else if (event.isKeyPressed(LogicalKeyboardKey.keyS)) {
          movement = PaddleMovement.down;
        } else {
          movement = PaddleMovement.idol;
        }
        break;

      case PaddlePosition.right:
        if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
          movement = PaddleMovement.up;
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
          movement = PaddleMovement.down;
        } else {
          movement = PaddleMovement.idol;
        }
        break;
    }

    return super.onKeyEvent(event, keysPressed);
  }
}
