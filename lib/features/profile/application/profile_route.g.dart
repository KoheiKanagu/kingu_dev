// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $profilePageRoute,
    ];

RouteBase get $profilePageRoute => GoRouteData.$route(
      path: '/profile',
      factory: $ProfilePageRouteExtension._fromState,
    );

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
