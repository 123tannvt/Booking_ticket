import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

class DashlineWidget extends StatelessWidget {
  final Color color;
  final int sections;
  final double width;
  const DashlineWidget(
      {super.key,
      required this.sections,
      this.width = 5,
      this.color = Palette.white});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxhWidth = constraints.constrainHeight();

        final dashCount = (boxhWidth / sections).floor();

        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
