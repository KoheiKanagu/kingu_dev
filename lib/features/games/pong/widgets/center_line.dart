import 'dart:async';

import 'package:flame/components.dart';

class CenterLine extends Component with HasGameRef {
  @override
  FutureOr<void> onLoad() {
    final dotSize = gameRef.size.x * 0.01;
    final dotCount = gameRef.size.y / dotSize / 3;

    List.generate(dotCount.ceil(), (index) {
      return RectangleComponent.square(
        size: dotSize,
        position: Vector2(
          gameRef.size.x / 2,
          index * dotSize * 3,
        ),
      );
    }).forEach(add);
  }
}
