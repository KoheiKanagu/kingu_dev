import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kingu_dev/constants/digital_agency_colors.dart';
import 'package:kingu_dev/constants/firebase_options.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/gen/fonts.gen.dart';
import 'package:kingu_dev/router/my_go_router.dart';
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
          webRecaptchaSiteKey: '6LdDb5kcAAAAAE33uZXkDZFRXbvJ2g52rHWxxikG',
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
    final theme = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: DigitalAgencyColors.hibiki.shade600,
      textTheme: Typography.material2021()
          .black
          .apply(
            displayColor: DigitalAgencyColors.sumi.shade900,
            bodyColor: DigitalAgencyColors.sumi.shade900,
            decorationColor: DigitalAgencyColors.sumi.shade700,
            fontFamily: FontFamily.notoSansJP,
          )
          .merge(
            const TextTheme(
              headlineLarge: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
              bodyMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.75,
              ),
            ),
          ),
      iconTheme: IconThemeData(
        color: DigitalAgencyColors.hibiki.shade600,
      ),
    );

    return MaterialApp.router(
      useInheritedMediaQuery: true,
      theme: theme,
      routeInformationProvider:
          ref.watch(myGoRouterProvider).routeInformationProvider,
      routeInformationParser:
          ref.watch(myGoRouterProvider).routeInformationParser,
      routerDelegate: ref.watch(myGoRouterProvider).routerDelegate,
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
