import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String fristText;
  final String secondText;
  const ColumnLayout(
      {super.key,
      required this.alignment,
      required this.fristText,
      required this.secondText,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          fristText,
          style: isColor == null
              ? AppFont.t.w500.white.s(16)
              : AppFont.t.w500.s(18),
        ),
        Box.h(5),
        Text(
          secondText,
          style: isColor == null
              ? AppFont.t.w500.white.s(16)
              : AppFont.t.w500.s(14).grey,
        )
      ],
    );
  }
}
