import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/features/error/application/error_page_route.dart'
    as error_page_route;
import 'package:kingu_dev/features/profile/application/profile_page_route.dart'
    as profile_page_route;
import 'package:kingu_dev/features/profile/application/profile_page_route.dart';
import 'package:kingu_dev/features/settings/presentation/settings_page_route.dart'
    as settings_page_route;
import 'package:kingu_dev/features/settings/presentation/settings_page_route.dart';
import 'package:kingu_dev/utils/provider_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: '_rootNavigatorKey');

final _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: '_shellNavigatorKey');

final myGoRouterProvider = Provider.autoDispose(
  (ref) => GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          final body = (((child as HeroControllerScope).child as Navigator)
                  .pages
                  .last as MaterialPage)
              .child;

          return AdaptiveScaffold(
            key: const GlobalObjectKey('AdaptiveScaffold'),
            selectedIndex: locationToIndex(state.location),
            useDrawer: false,
            internalAnimations: false,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.account_circle_outlined),
                selectedIcon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
              NavigationDestination(
                icon: Icon(Icons.settings_applications_outlined),
                selectedIcon: Icon(Icons.settings_applications),
                label: 'Settings',
              ),
            ],
            onSelectedIndexChange: (p0) {
              indexToGo(p0, context);
            },
            body: (context) {
              return Padding(
                padding: const EdgeInsets.only(left: 40),
                child: body,
              );
            },
            smallBody: (context) {
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: body,
              );
            },
          );
        },
        routes: [
          ...profile_page_route.$appRoutes,
          ...settings_page_route.$appRoutes,
        ],
      )
    ],
    errorBuilder: (context, state) {
      logger.e(
        [
          'router error',
          'name: ${state.name}',
          'fullpath: ${state.fullpath}',
          'params: ${state.params}',
          'location: ${state.location}',
          'namqueryParametersAlle: ${state.queryParametersAll}',
        ],
        state.error,
        StackTrace.current,
      );

      return const error_page_route.ErrorPageRoute().build(context, state);
    },
    observers: [
      FirebaseAnalyticsObserver(
        analytics: ref.watch(firebaseAnalyticsProvider),
      ),
    ],
    debugLogDiagnostics: kDebugMode,
    initialLocation: '/',
    redirect: (context, state) {
      if (state.location.isEmpty) {
        return profile_page_route.ProfilePageRoute.path;
      }
      return null;
    },
  ),
  name: 'myGoRouterProvier',
);

int locationToIndex(String location) {
  if (location.startsWith(ProfilePageRoute.path)) {
    return 0;
  }

  if (location.startsWith(SettingsPageRoute.path)) {
    return 1;
  }
  return 0;
}

void indexToGo(int index, BuildContext context) {
  switch (index) {
    case 0:
      const ProfilePageRoute().go(context);
      break;
    case 1:
      const SettingsPageRoute().go(context);
      break;
  }
}
