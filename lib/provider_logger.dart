import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roggle/roggle.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.d(
      {
        'name': provider.name,
        'runtimeType': provider.runtimeType,
        'newValue': newValue
      },
    );
  }
}

final logger = kReleaseMode
    ? Roggle.crashlytics(
        printer: CrashlyticsPrinter(
          errorLevel: Level.warning,
          onError: (event) {
            final bool fatal;

            switch (event.level) {
              case Level.verbose:
              case Level.debug:
              case Level.info:
              case Level.warning:
              case Level.nothing:
                fatal = false;
                break;
              case Level.error:
              case Level.wtf:
                fatal = true;
                break;
            }

            FirebaseCrashlytics.instance.recordError(
              event.exception,
              event.stack,
              fatal: fatal,
            );
          },
          onLog: (event) => FirebaseCrashlytics.instance.log(event.message),
        ),
      )
    : Roggle(
        printer: SinglePrettyPrinter(),
      );
