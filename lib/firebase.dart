import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseCrashlytics = Provider.autoDispose(
  (ref) => FirebaseCrashlytics.instance,
  name: 'firebaseCrashlytics',
);

final firebaseAnalytics = Provider.autoDispose(
  (ref) => FirebaseAnalytics.instance,
  name: 'firebaseAnalytics',
);
