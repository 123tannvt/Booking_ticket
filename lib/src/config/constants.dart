import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

const KHinTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

const KLabelStyle = TextStyle(
  color: Palette.white,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.bold,
);

final KBoxDecorationStyle = BoxDecoration(
    color: const Color(0xFF6CA8F1),
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      )
    ]);

const double kItermPaddig = 15.0;
const double kMediumPadding = 10.0;
