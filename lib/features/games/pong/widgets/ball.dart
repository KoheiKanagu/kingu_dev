import 'dart:math';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:kingu_dev/features/games/pong/constants/paddle_position.dart';
import 'package:kingu_dev/features/games/pong/presentation/pong_game.dart';
import 'package:kingu_dev/features/games/pong/widgets/paddle.dart';

class Ball extends CircleComponent
    with HasGameRef<PongGame>, CollisionCallbacks {
  Ball()
      : super(
          anchor: Anchor.center,
        );

  static const double defaultMovementSpeed = 500;

  double movementSpeed = defaultMovementSpeed;

  late Vector2 movement;
  final rand = Random();

  void reset() {
    position = gameRef.size / 2;
    movement = Vector2(
      rand.nextDouble() * 2 - 1,
      rand.nextDouble() * 2 - 1,
    ).normalized();
    movementSpeed = defaultMovementSpeed;
  }

  @override
  Future<void> onLoad() {
    radius = game.size.x * 0.01;
    reset();
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
      game.leftScore++;
      reset();
    } else if (position.x - radius < 0) {
      game.rightScore++;
      reset();
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
          movementSpeed *= 1.05;
          break;
        case PaddlePosition.right:
          movement.x *= -1;
          movementSpeed *= 1.05;
          break;
      }
    }

    super.onCollision(intersectionPoints, other);
  }
}
