import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_providers.g.dart';

@riverpod
class DarkModeController extends _$DarkModeController {
  @override
  bool build() {
    return false;
  }

  // ignore: avoid_positional_boolean_parameters, use_setters_to_change_properties
  void switchDarkMode(bool value) {
    state = value;
  }
}
