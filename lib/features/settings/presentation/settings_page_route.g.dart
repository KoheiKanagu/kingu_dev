// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'settings_page_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $settingsPageRoute,
    ];

RouteBase get $settingsPageRoute => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsPageRouteExtension._fromState,
    );

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
