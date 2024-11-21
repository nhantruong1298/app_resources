import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:lottie/lottie.dart';

import 'assets.gen.dart';

const imagesFolder = '$packageName/assets/images';
const packageName = 'app_resources';

// class PackagedLottieGen {
//   final LottieGenImage _assetName;

//   const PackagedLottieGen(
//     this._assetName,
//   );

//   String get fullAssetName => 'packages/$packageName/${_assetName.path}';

//   LottieBuilder lottie({
//     Animation<double>? controller,
//     bool? animate,
//     FrameRate? frameRate,
//     bool? repeat,
//     bool? reverse,
//     LottieDelegates? delegates,
//     LottieOptions? options,
//     void Function(LottieComposition)? onLoaded,
//     LottieImageProviderFactory? imageProviderFactory,
//     Key? key,
//     AssetBundle? bundle,
//     Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
//     ImageErrorWidgetBuilder? errorBuilder,
//     double? width,
//     double? height,
//     BoxFit? fit,
//     AlignmentGeometry? alignment,
//     String? package,
//     bool? addRepaintBoundary,
//     FilterQuality? filterQuality,
//     void Function(String)? onWarning,
//   }) {
//     return Lottie.asset(
//       fullAssetName,
//       controller: controller,
//       animate: animate,
//       frameRate: frameRate,
//       repeat: repeat,
//       reverse: reverse,
//       delegates: delegates,
//       options: options,
//       onLoaded: onLoaded,
//       imageProviderFactory: imageProviderFactory,
//       key: key,
//       bundle: bundle,
//       frameBuilder: frameBuilder,
//       errorBuilder: errorBuilder,
//       width: width,
//       height: height,
//       fit: fit,
//       alignment: alignment,
//       package: package,
//       addRepaintBoundary: addRepaintBoundary,
//       filterQuality: filterQuality,
//       onWarning: onWarning,
//     );
//   }
// }

extension AssetGenStringExt on String {
  String get fullAssetPath => 'packages/$packageName/$this';
}

extension AssetGenImageExt on AssetGenImage {
  String get fullPath => 'packages/$packageName/$path';

  String get fullKeyName => 'packages/$packageName/$keyName';

  Image pimage({
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
      path,
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
      package: package ?? packageName,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }
}

extension AssetsGen on Assets {
  static String getRawString(String assetName) {
    return '$packageName/$assetName';
  }
}

extension SvgGenImageExt on SvgGenImage {
  String get fullPath => 'packages/$packageName/$path';

  String get fullKeyName => 'packages/$packageName/$keyName';

  SvgPicture psvg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      path,
      package: package ?? packageName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      // color: color,
      // colorBlendMode: colorBlendMode,
      colorFilter:
          color != null ? ColorFilter.mode(color, colorBlendMode) : null,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      // clipBehavior: clipBehavior,
      // cacheColorFilter: cacheColorFilter,
    );
  }
}
