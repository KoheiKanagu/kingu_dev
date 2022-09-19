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

final logger = Roggle(
  printer: SinglePrettyPrinter(),
);
