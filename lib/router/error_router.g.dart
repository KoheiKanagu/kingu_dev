// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'error_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $errorPageRoute,
    ];

GoRoute get $errorPageRoute => GoRouteData.$route(
      path: '/error',
      factory: $ErrorPageRouteExtension._fromState,
    );

extension $ErrorPageRouteExtension on ErrorPageRoute {
  static ErrorPageRoute _fromState(GoRouterState state) =>
      const ErrorPageRoute();

  String get location => GoRouteData.$location(
        '/error',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
