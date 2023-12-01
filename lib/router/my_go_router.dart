import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/constants/global_keys.dart';
import 'package:kingu_dev/features/error/presentation/error_page.dart';
import 'package:kingu_dev/features/profile/application/profile_route.dart'
    as profile_route;
import 'package:kingu_dev/features/profile/application/profile_route.dart';
import 'package:kingu_dev/features/settings/application/settings_route.dart'
    as settings_route;
import 'package:kingu_dev/utils/provider_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_go_router.g.dart';

@riverpod
Raw<GoRouter> myGoRouter(
  MyGoRouterRef ref,
) =>
    GoRouter(
      navigatorKey: rootNavigatorStateKey,
      routes: [
        ...profile_route.$appRoutes,
        ...settings_route.$appRoutes,
      ],
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
      initialLocation: '/profile',
      redirect: (context, state) {
        if (state.uri.toString().isEmpty) {
          return ProfilePageRoute.path;
        }
        return null;
      },
    );
