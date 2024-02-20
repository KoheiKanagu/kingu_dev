import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kingu_dev/constants/firebase_options.dart';
import 'package:kingu_dev/constants/global_keys.dart';
import 'package:kingu_dev/constants/my_theme.dart';
import 'package:kingu_dev/features/firebase/application/firebase_providers.dart';
import 'package:kingu_dev/features/routing/application/my_go_router.dart';
import 'package:kingu_dev/features/settings/application/settings_providers.dart';
import 'package:kingu_dev/utils/provider_logger.dart';

Future<void> main() async {
  if (kIsWeb) {
    usePathUrlStrategy();
  }

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );

  final container = ProviderContainer(
    observers: [
      ProviderLogger(),
    ],
  );

  await Future.wait(
    [
      if (kReleaseMode)
        FirebaseAppCheck.instance.activate(
          webProvider: ReCaptchaV3Provider(
            '6LdDb5kcAAAAAE33uZXkDZFRXbvJ2g52rHWxxikG',
          ),
        ),
      container
          .read(firebaseAnalyticsProvider)
          .setAnalyticsCollectionEnabled(kReleaseMode),
    ],
  );

  Intl.defaultLocale = 'ja_JP';

  FlutterError.onError = (details) {
    logger.e(
      'Flutter Error',
      error: details.exception,
      stackTrace: details.stack,
    );
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Error',
      error: error,
      stackTrace: stack,
    );
    return true;
  };

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      theme: MyTheme.theme,
      themeMode: ref.watch(darkModeControllerProvider)
          ? ThemeMode.dark
          : ThemeMode.light,
      darkTheme: MyTheme.darkTheme,
      routerConfig: ref.watch(myGoRouterProvider),
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
