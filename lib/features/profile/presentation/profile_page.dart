import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/constants/my_theme.dart';
import 'package:kingu_dev/features/profile/presentation/profile_body.dart';
import 'package:kingu_dev/features/settings/application/settings_providers.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: MyTheme.adaptiveBodyWidgetPadding(context),
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            children: [
              const Expanded(
                child: ProfileBody(),
              ),
              SwitchListTile(
                value: ref.watch(darkModeControllerProvider),
                onChanged: (value) {
                  ref
                      .read(darkModeControllerProvider.notifier)
                      .toggleDarkMode();
                },
                title: const Text('Dark Mode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
