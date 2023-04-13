import 'package:book_tiket/src/features/splash_welcom/widget/background_welcom.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';

class SplashWelcomScreen extends StatefulWidget {
  const SplashWelcomScreen({super.key});

  @override
  State<SplashWelcomScreen> createState() => _SplashWelcomScreenState();
}

class _SplashWelcomScreenState extends State<SplashWelcomScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),
        () => AppNavigator.push(Routes.welcomScreen));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundWelcomWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(
              flex: 1,
              child: Text(
                'Chào mừng đến với tralvo ',
                style: TextStyle(
                  fontSize: 20,
                  color: Palette.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Flexible(
              flex: 2,
              child: Image.asset(
                'assets/images/R.png',
                width: size.width * 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
