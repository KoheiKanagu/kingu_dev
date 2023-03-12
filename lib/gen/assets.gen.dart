/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/appStore.webp
  AssetGenImage get appStore =>
      const AssetGenImage('assets/icons/appStore.webp');

  /// File path: assets/icons/facebook.webp
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.webp');

  /// File path: assets/icons/github.webp
  AssetGenImage get github => const AssetGenImage('assets/icons/github.webp');

  /// File path: assets/icons/googlePlay.webp
  AssetGenImage get googlePlay =>
      const AssetGenImage('assets/icons/googlePlay.webp');

  /// File path: assets/icons/steam.webp
  AssetGenImage get steam => const AssetGenImage('assets/icons/steam.webp');

  /// File path: assets/icons/twitter.webp
  AssetGenImage get twitter => const AssetGenImage('assets/icons/twitter.webp');

  /// File path: assets/icons/zenn.webp
  AssetGenImage get zenn => const AssetGenImage('assets/icons/zenn.webp');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appStore, facebook, github, googlePlay, steam, twitter, zenn];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/steam_replay_2022.webp
  AssetGenImage get steamReplay2022 =>
      const AssetGenImage('assets/images/steam_replay_2022.webp');

  /// List of all assets
  List<AssetGenImage> get values => [steamReplay2022];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
