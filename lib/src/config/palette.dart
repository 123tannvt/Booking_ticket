import 'package:flutter/material.dart';

class Palette {
  static const primary = Color(0xFF4696EB);
  static const second = Color(0xFF61A4F1);
  static const black = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFFAAAAAA);
  static const Color bgColor = Color(0xFFeeedf2);
  static const grayTicket = Color(0xFF526799);
  static const Color orangeTicket = Color(0xFFF37B67);
  static const Color textColor = Color(0xFF3b3b3b);
  static const Color background = Color(0xFFFFFFFF);
  static const Color red = Color(0xffD42029);
}

class Grandients {
  static const grandientsLogin = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
    Palette.second,
    Color(0xFF6CA8F1),
    Palette.primary,
  ]);
}
