// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kingu_dev/constants/my_colors.dart';
import 'package:kingu_dev/gen/fonts.gen.dart';

class MyTheme {
  static final theme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: MyColors.hibiki,
    ),
    textTheme: Typography.material2021(
      platform: defaultTargetPlatform,
    ).black.apply(
          displayColor: MyColors.sumi.shade900,
          bodyColor: MyColors.sumi.shade900,
          decorationColor: MyColors.sumi.shade700,
          fontFamily: FontFamily.notoSansJP,
        ),
    iconTheme: IconThemeData(
      color: MyColors.hibiki.shade600,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: MyColors.hibiki,
      brightness: Brightness.dark,
    ),
    textTheme: Typography.material2021(
      platform: defaultTargetPlatform,
    ).white.apply(
          fontFamily: FontFamily.notoSansJP,
        ),
  );

  static EdgeInsetsGeometry adaptiveBodyWidgetPadding(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.05,
      vertical: MediaQuery.of(context).size.height * 0.05,
    );
  }
}
