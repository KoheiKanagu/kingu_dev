import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/constants/global_keys.dart';
import 'package:kingu_dev/features/error/presentation/error_page.dart';
import 'package:kingu_dev/features/firebase/application/firebase_providers.dart';
import 'package:kingu_dev/features/mol_trip/presentation/mol_trip_page.dart';
import 'package:kingu_dev/features/profile/presentation/profile_page.dart';
import 'package:kingu_dev/utils/provider_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_go_router.g.dart';

@riverpod
Raw<GoRouter> myGoRouter(
  MyGoRouterRef ref,
) =>
    GoRouter(
      navigatorKey: rootNavigatorStateKey,
      routes: $appRoutes,
      errorBuilder: (context, state) {
        logger.e(
          [
            'router error',
            'name: ${state.name}',
            'fullPath: ${state.fullPath}',
            'pathParameters: ${state.pathParameters}',
            'queryParameters: ${state.uri.queryParameters}',
            'location: ${state.uri}',
            'queryParametersAll: ${state.uri.queryParametersAll}',
          ],
          error: state.error,
          stackTrace: StackTrace.current,
        );

        return const ErrorPage();
      },
      observers: [
        FirebaseAnalyticsObserver(
          analytics: ref.watch(firebaseAnalyticsProvider),
        ),
      ],
      debugLogDiagnostics: kDebugMode,
      redirect: (context, state) {
        if (state.uri.toString().isEmpty) {
          return ProfilePageRoute.path;
        }
        return null;
      },
    );

@TypedGoRoute<ProfilePageRoute>(
  path: ProfilePageRoute.path,
  routes: [
    TypedGoRoute<MolTripPageRoute>(
      path: MolTripPageRoute.path,
    ),
  ],
)
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}

class MolTripPageRoute extends GoRouteData {
  const MolTripPageRoute();

  static const path = 'mol-trip';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MolTripPage();
  }
}
