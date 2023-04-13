import 'package:flutter/material.dart';

class BackgroundWelcomWidget extends StatelessWidget {
  const BackgroundWelcomWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/main_top.png',
                    width: size.width * 0.3,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/main_bottom.png',
                    width: size.width * 0.3,
                  ),
                ],
              ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}
