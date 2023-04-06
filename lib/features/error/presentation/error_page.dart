import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorPage extends HookConsumerWidget {
  const ErrorPage({
    super.key,
  });

  static const path = '/error';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(
        'エラー',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
