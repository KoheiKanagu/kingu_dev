import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/features/error/presentation/error_page.dart';
import 'package:kingu_dev/features/games/pong/presentation/pong_page.dart';
import 'package:kingu_dev/features/games/presentation/game_page.dart';
import 'package:kingu_dev/features/profile/presentation/profile_page.dart';
import 'package:kingu_dev/features/settings/presentation/settings_page.dart';
import 'package:kingu_dev/utils/provider_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_go_router.g.dart';

final rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: '_rootNavigatorKey');

final shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: '_shellNavigatorKey');

final myGoRouterProvider = Provider.autoDispose(
  (ref) => GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
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

      return const ErrorPageRoute().build(context, state);
    },
    observers: [
      FirebaseAnalyticsObserver(
        analytics: ref.watch(firebaseAnalyticsProvider),
      ),
    ],
    debugLogDiagnostics: kDebugMode,
    initialLocation: '/profile',
    redirect: (context, state) {
      if (state.location.isEmpty) {
        return ProfilePageRoute.path;
      }
      return null;
    },
  ),
  name: 'myGoRouterProvier',
);

@TypedShellRoute<RootPageRoute>(
  routes: [
    TypedGoRoute<ErrorPageRoute>(
      path: ErrorPageRoute.path,
    ),
    TypedGoRoute<SettingsPageRoute>(
      path: SettingsPageRoute.path,
    ),
    TypedGoRoute<ProfilePageRoute>(
      path: ProfilePageRoute.path,
    ),
    TypedGoRoute<GamePageRoute>(
      path: GamePageRoute.path,
      routes: [
        TypedGoRoute<PongPageRoute>(
          path: PongPageRoute.path,
        ),
      ],
    ),
  ],
)
class RootPageRoute extends ShellRouteData {
  const RootPageRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    final child = (((navigator as HeroControllerScope).child as Navigator)
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
          icon: Icon(Icons.games_outlined),
          selectedIcon: Icon(Icons.games),
          label: 'Games',
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
        return child;
      },
      smallBody: (context) {
        return child;
      },
    );
  }

  int locationToIndex(String location) {
    if (location.startsWith(ProfilePageRoute.path)) {
      return 0;
    }

    if (location.startsWith(GamePageRoute.path)) {
      return 1;
    }

    if (location.startsWith(SettingsPageRoute.path)) {
      return 2;
    }

    return 0;
  }

  void indexToGo(int index, BuildContext context) {
    switch (index) {
      case 0:
        const ProfilePageRoute().go(context);
        break;
      case 1:
        const GamePageRoute().go(context);
        break;
      case 2:
        const SettingsPageRoute().go(context);
        break;
    }
  }
}

class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  static const path = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}

class SettingsPageRoute extends GoRouteData {
  const SettingsPageRoute();

  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}

class ErrorPageRoute extends GoRouteData {
  const ErrorPageRoute();

  static const path = '/error';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ErrorPage();
  }
}

class GamePageRoute extends GoRouteData {
  const GamePageRoute();

  static const path = '/games';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GamePage();
  }
}

class PongPageRoute extends GoRouteData {
  const PongPageRoute();

  static const path = 'pong';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PongPage();
  }
}
