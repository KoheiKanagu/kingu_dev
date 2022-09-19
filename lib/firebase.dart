import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAnalytics = Provider.autoDispose(
  (ref) => FirebaseAnalytics.instance,
  name: 'firebaseAnalytics',
);
