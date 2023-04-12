import 'dart:math';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:kingu_dev/features/games/pong/constants/paddle_position.dart';
import 'package:kingu_dev/features/games/pong/widgets/paddle.dart';

class Ball extends CircleComponent with HasGameRef, CollisionCallbacks {
  Ball({
    required super.radius,
    required super.position,
  }) : super(
          anchor: Anchor.center,
        );

  double movementSpeed = 800;

  late Vector2 movement;
  final rand = Random();

  @override
  Future<void> onLoad() {
    movement = Vector2(
      rand.nextDouble(),
      rand.nextDouble(),
    );

    add(CircleHitbox());

    return super.onLoad();
  }

  @override
  void update(double dt) {
    position += Vector2(
      movement.x * dt * movementSpeed,
      movement.y * dt * movementSpeed,
    );

    if (position.x + radius > gameRef.size.x) {
      position.x = gameRef.size.x - radius;
      movement.x *= -1;
    } else if (position.x - radius < 0) {
      position.x = radius;
      movement.x *= -1;
    }

    if (position.y + radius > gameRef.size.y) {
      position.y = gameRef.size.y - radius;
      movement.y *= -1;
    } else if (position.y - radius < 0) {
      position.y = radius;
      movement.y *= -1;
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Paddle) {
      switch (other.paddlePosition) {
        case PaddlePosition.left:
          movement.x *= -1;
          movement.normalize();
          movementSpeed *= 1.05;
          break;
        case PaddlePosition.right:
          movement.x *= -1;
          movement.normalize();
          movementSpeed *= 1.05;
          break;
      }
    }

    super.onCollision(intersectionPoints, other);
  }
}
