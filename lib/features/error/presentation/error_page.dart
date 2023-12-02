import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/features/profile/application/profile_route.dart';

class ErrorPage extends HookConsumerWidget {
  const ErrorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'エラー',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Gap(64),
            ElevatedButton(
              onPressed: () {
                const ProfilePageRoute().go(context);
              },
              child: const Text(
                'トップへ',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
