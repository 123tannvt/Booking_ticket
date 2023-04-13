import 'package:book_tiket/src/features/splash_welcom/widget/background_welcom.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BackgroundWelcomWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 3, child: Box.h(120)),
          Flexible(
            flex: 2,
            child: Image.asset(
              'assets/images/R.png',
              height: size.height * 0.2,
            ),
          ),
          // const Text(
          //   'xin chào',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 20,
          //     color: Palette.primary,
          //   ),
          // ),
          Flexible(
            flex: 1,
            child: Box.h(30),
          ),
          Flexible(
            flex: 1,
            child: ButtonPrimary(
              action: () => AppNavigator.push(Routes.signUpScreen),
              text: 'Đăng nhập lần đầu',
              height: size.height * 0.05,
              width: size.height * 0.2,
            ),
          ),
          Flexible(
            flex: 1,
            child: Box.h(10),
          ),
          Flexible(
            flex: 1,
            child: ButtonPrimary(
              action: () => AppNavigator.push(Routes.loginScreen),
              text: 'Bạn đã có tài khoản',
              height: size.height * 0.05,
              width: size.height * 0.2,
            ),
          ),
          Flexible(
            flex: 3,
            child: Box.h(120),
          ),
        ],
      ),
    ));
  }
}
