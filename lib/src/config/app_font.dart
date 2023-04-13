import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/widgets.dart';

extension ColorExtension on TextStyle {
  TextStyle get primary => copyWith(color: Palette.primary);
  TextStyle get black => copyWith(color: Palette.black);
  TextStyle get white => copyWith(color: Palette.white);
  TextStyle get grey => copyWith(color: Palette.grey);
}

extension MyFontWeight on TextStyle {
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
}

extension MyFontSize on TextStyle {
  TextStyle s([double size = 14]) => copyWith(fontSize: size);
}

class AppFont {
  static TextStyle get t => const TextStyle(
        color: Palette.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'OpenSans',
      );
}
