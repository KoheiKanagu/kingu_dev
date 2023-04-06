import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/features/error/application/error_page_route.dart';

part 'settings_page_route.g.dart';

@TypedGoRoute<SettingsPageRoute>(
  path: SettingsPageRoute.path,
)
class SettingsPageRoute extends GoRouteData {
  const SettingsPageRoute();

  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) {
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
