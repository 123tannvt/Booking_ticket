import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  // bool? isColor;
  const ThickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          // color: isColor == null ? Palette.white : Palette.primary, // check co du lieu
          color: Palette.second,
        ),
      ),
    );
  }
}
