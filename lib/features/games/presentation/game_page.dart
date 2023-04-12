import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/router/my_go_router.dart';

class GamePage extends HookConsumerWidget {
  const GamePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Pong'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              const PongPageRoute().go(context);
            },
          ),
        ],
      ),
    );
  }
}
