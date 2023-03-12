import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/firebase.dart';
import 'package:kingu_dev/provider_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'error_router.dart' as error_router;
import 'home_router.dart' as home_router;

final myGoRouterProvider = Provider.autoDispose(
  (ref) => GoRouter(
    routes: [
      ...home_router.$appRoutes,
      ...error_router.$appRoutes,
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
      return const error_router.ErrorPageRoute().build(context, state);
    },
    observers: [
      FirebaseAnalyticsObserver(
        analytics: ref.watch(firebaseAnalyticsProvider),
      ),
    ],
    debugLogDiagnostics: kDebugMode,
    initialLocation: '/',
  ),
  name: 'myGoRouterProvier',
);
