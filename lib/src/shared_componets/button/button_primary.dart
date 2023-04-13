import 'package:flutter/material.dart';
import 'package:book_tiket/src/config/config.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? color;
  final Function()? action;
  final TextStyle? textStyle;
  const ButtonPrimary(
      {super.key,
      required this.action,
      required this.text,
      this.color = Palette.primary,
      this.height,
      this.textStyle,
      this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: action != null ? color : Palette.second,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ?? AppFont.t.w600.white,
          ),
        ),
      ),
    );
  }
}
