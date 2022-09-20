import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kingu_dev/firebase_options.dart';
import 'package:kingu_dev/provider_logger.dart';
import 'package:kingu_dev/router/my_go_router.dart';

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
          webRecaptchaSiteKey: '6LdDb5kcAAAAAE33uZXkDZFRXbvJ2g52rHWxxikG',
        )
    ],
  );

  Intl.defaultLocale = 'ja_JP';

  FlutterError.onError = (details) {
    logger.e(
      'Flutter Error',
      details.exception,
      details.stack,
    );
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Error',
      error,
      stack,
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
    final theme = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00A5BF)),
      textTheme: Typography.material2021().black,
      useMaterial3: true,
    );

    return MaterialApp.router(
      useInheritedMediaQuery: true,
      theme: theme,
      routeInformationProvider: ref.watch(myGoRouter).routeInformationProvider,
      routeInformationParser: ref.watch(myGoRouter).routeInformationParser,
      routerDelegate: ref.watch(myGoRouter).routerDelegate,
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
