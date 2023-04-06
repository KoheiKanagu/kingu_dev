import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/router/my_go_router.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const Text('SettingsPageRoute'),
          ElevatedButton(
            onPressed: () {
              const ErrorPageRoute().go(context);
            },
            child: const Text('Go to Profile'),
          ),
        ],
      ),
    );
  }
}
