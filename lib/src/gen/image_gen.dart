import 'package:flutter/widgets.dart';

class ImageGen {
  static Widget loadFormAssets(
    String imagePath,
    double? height,
    double? width,
    BorderRadius? radius,
    BoxFit? fit,
    Color? color,
    Alignment? alignment,
  ) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.zero,
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        color: color,
        alignment: alignment ?? Alignment.center,
      ),
    );
  }
}
