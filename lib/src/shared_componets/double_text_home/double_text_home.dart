import 'package:flutter/material.dart';

import '../../config/config.dart';

class DoubleTextHome extends StatelessWidget {
  final String bigText;
  final String smallText;
  final String nameRoute;
  const DoubleTextHome(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.nameRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppFont.t.black.w600.s(20),
          ),
          InkWell(
            onTap: () {
              AppNavigator.push(nameRoute);
            },
          ),
          Text(
            smallText,
            style: AppFont.t.primary,
          )
        ],
      ),
    );
  }
}
