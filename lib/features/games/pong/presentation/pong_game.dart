import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:kingu_dev/features/games/pong/constants/paddle_position.dart';
import 'package:kingu_dev/features/games/pong/widgets/ball.dart';
import 'package:kingu_dev/features/games/pong/widgets/center_line.dart';
import 'package:kingu_dev/features/games/pong/widgets/paddle.dart';

class PongGame extends FlameGame
    with HasKeyboardHandlerComponents, HasCollisionDetection {
  late final Paddle leftPaddle;
  late final Paddle rightPaddle;
  late final Ball ball;

  @override
  FutureOr<void> onLoad() {
    leftPaddle = Paddle(
      size: Vector2(
        size.x * 0.02,
        size.y * 0.2,
      ),
      position: Vector2(size.x * 0.05, 100),
      paddlePosition: PaddlePosition.left,
    );

    rightPaddle = Paddle(
      size: Vector2(
        size.x * 0.02,
        size.y * 0.2,
      ),
      position: Vector2(size.x * 0.95, 100),
      paddlePosition: PaddlePosition.right,
    );

    ball = Ball(
      radius: size.x * 0.02,
      position: Vector2(size.x / 2, size.y / 2),
    );

    add(leftPaddle);
    add(rightPaddle);
    add(ball);

    add(CenterLine());
  }

  // @override
  // void update(double dt) {
  //   super.update(dt);
  // }
}
