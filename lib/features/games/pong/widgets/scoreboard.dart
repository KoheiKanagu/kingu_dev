import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/widgets.dart';
import 'package:kingu_dev/features/games/pong/constants/paddle_position.dart';
import 'package:kingu_dev/features/games/pong/presentation/pong_game.dart';

class Scoreboard extends TextComponent with HasGameRef<PongGame> {
  Scoreboard(
    this.paddlePosition,
  ) : super(
          text: '0',
          anchor: Anchor.center,
        );

  final PaddlePosition paddlePosition;

  @override
  FutureOr<void> onLoad() {
    final fontSize = game.size.y * 0.1;

    textRenderer = TextPaint(
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: const Color(0xffffffff),
      ),
    );

    switch (paddlePosition) {
      case PaddlePosition.left:
        position = Vector2(
          game.size.x / 2 - game.size.x * 0.01 - fontSize / 2,
          game.size.y * 0.01 + fontSize / 2,
        );
      case PaddlePosition.right:
        position = Vector2(
          game.size.x / 2 + game.size.x * 0.01 + fontSize / 2,
          game.size.y * 0.01 + fontSize / 2,
        );
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    switch (paddlePosition) {
      case PaddlePosition.left:
        text = game.leftScore.toString();
      case PaddlePosition.right:
        text = game.rightScore.toString();
    }
  }
}
