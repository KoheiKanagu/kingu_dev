import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_providers.g.dart';

@riverpod
FirebaseAnalytics firebaseAnalytics(FirebaseAnalyticsRef ref) =>
    FirebaseAnalytics.instance;
