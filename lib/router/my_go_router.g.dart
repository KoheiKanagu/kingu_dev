// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'my_go_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootPageRoute,
    ];

RouteBase get $rootPageRoute => ShellRouteData.$route(
      navigatorKey: RootPageRoute.$navigatorKey,
      factory: $RootPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/error',
          factory: $ErrorPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/settings',
          factory: $SettingsPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/profile',
          factory: $ProfilePageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/games',
          factory: $GamePageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'pong',
              factory: $PongPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $RootPageRouteExtension on RootPageRoute {
  static RootPageRoute _fromState(GoRouterState state) => const RootPageRoute();
}

extension $ErrorPageRouteExtension on ErrorPageRoute {
  static ErrorPageRoute _fromState(GoRouterState state) =>
      const ErrorPageRoute();

  String get location => GoRouteData.$location(
        '/error',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsPageRouteExtension on SettingsPageRoute {
  static SettingsPageRoute _fromState(GoRouterState state) =>
      const SettingsPageRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) =>
      const ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GamePageRouteExtension on GamePageRoute {
  static GamePageRoute _fromState(GoRouterState state) => const GamePageRoute();

  String get location => GoRouteData.$location(
        '/games',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PongPageRouteExtension on PongPageRoute {
  static PongPageRoute _fromState(GoRouterState state) => const PongPageRoute();

  String get location => GoRouteData.$location(
        '/games/pong',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
