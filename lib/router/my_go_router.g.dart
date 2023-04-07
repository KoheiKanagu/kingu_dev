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
      factory: $RootPageRouteExtension._fromState,
      navigatorKey: RootPageRoute.$navigatorKey,
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

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $SettingsPageRouteExtension on SettingsPageRoute {
  static SettingsPageRoute _fromState(GoRouterState state) =>
      const SettingsPageRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) =>
      const ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
