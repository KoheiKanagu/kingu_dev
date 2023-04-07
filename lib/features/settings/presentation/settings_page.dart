import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/constants/my_theme.dart';
import 'package:kingu_dev/features/settings/application/settings_providers.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: MyTheme.adaptiveBodyWidgetPadding(context),
        children: [
          SwitchListTile(
            value: ref.watch(darkModeControllerProvider),
            onChanged: (value) {
              ref
                  .read(darkModeControllerProvider.notifier)
                  .switchDarkMode(value);
            },
            title: const Text('Dark Mode'),
          ),
        ],
      ),
    );
  }
}
