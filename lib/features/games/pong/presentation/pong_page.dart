import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/common_widgets/my_simple_text.dart';
import 'package:kingu_dev/features/games/pong/presentation/pong_game.dart';
import 'package:url_launcher/url_launcher.dart';

class PongPage extends HookConsumerWidget {
  const PongPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: GameWidget(
              game: PongGame(),
            ),
          ),
          MySimpleTest(
            text:
                "inspired by 'Observable Flutter: Speed coding Pong - YouTube'",
            onTap: () {
              launchUrl(
                Uri.parse('https://www.youtube.com/watch?v=3KpOyfxyPes'),
              );
            },
          )
        ],
      ),
    );
  }
}
