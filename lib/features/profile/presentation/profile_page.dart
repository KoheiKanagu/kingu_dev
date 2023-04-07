import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/features/profile/presentation/profile_body.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: const ProfileBody(),
    );
  }
}
