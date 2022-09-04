import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/firebase.dart';

import 'home_router.dart' as home_router;

final myGoRouter = Provider.autoDispose(
  (ref) => GoRouter(
    routes: [
      ...home_router.$appRoutes,
    ],
    errorBuilder: (context, state) {
      ref.watch(firebaseCrashlytics).recordError(
            state.error,
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
  ),
  name: 'myGoRouter',
);
