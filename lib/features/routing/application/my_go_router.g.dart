// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'my_go_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $profilePageRoute,
    ];

RouteBase get $profilePageRoute => GoRouteData.$route(
      path: '/',
      factory: $ProfilePageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'mol-trip',
          factory: $MolTripPageRouteExtension._fromState,
        ),
      ],
    );

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) =>
      const ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MolTripPageRouteExtension on MolTripPageRoute {
  static MolTripPageRoute _fromState(GoRouterState state) =>
      const MolTripPageRoute();

  String get location => GoRouteData.$location(
        '/mol-trip',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myGoRouterHash() => r'26fac6f9e36da7dd525f225995f571f90cd25226';

/// See also [myGoRouter].
@ProviderFor(myGoRouter)
final myGoRouterProvider = AutoDisposeProvider<Raw<GoRouter>>.internal(
  myGoRouter,
  name: r'myGoRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myGoRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MyGoRouterRef = AutoDisposeProviderRef<Raw<GoRouter>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
