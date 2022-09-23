import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/router/home_router.dart';

class ErrorPage extends HookConsumerWidget {
  const ErrorPage({
    super.key,
  });

  static const path = '/error';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('エラー'),
            ElevatedButton.icon(
              onPressed: () {
                const HomePageRoute().go(context);
              },
              icon: const Icon(Icons.home),
              label: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
