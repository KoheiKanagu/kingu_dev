import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/firebase.dart';
import 'package:kingu_dev/provider_logger.dart';

import 'home_router.dart' as home_router;

final myGoRouter = Provider.autoDispose(
  (ref) => GoRouter(
    routes: [
      ...home_router.$appRoutes,
    ],
    errorBuilder: (context, state) {
      logger.e(
        'router error',
        state,
        StackTrace.current,
      );
      return const Text('error');
    },
    observers: [
      FirebaseAnalyticsObserver(
        analytics: ref.watch(firebaseAnalytics),
      ),
    ],
    debugLogDiagnostics: kDebugMode,
    initialLocation: '/',
    urlPathStrategy: UrlPathStrategy.path,
  ),
  name: 'myGoRouter',
);
