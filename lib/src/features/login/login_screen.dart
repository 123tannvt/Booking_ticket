import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberME = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: Grandients.grandientsLogin,
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Box.h(50),
                  _buildEmailTF(),
                  Box.h(20),
                  _buildPasswordTF(),
                  Box.h(10),
                  _buildForgotPasswordBtn(),
                  Box.h(10),
                  _buildCheckRememberPass(),
                  Box.h(10),
                  ButtonPrimary(
                    action: () {
                      AppNavigator.push(Routes.bottomNavBar);
                    },
                    text: 'Đăng nhập',
                    height: size.height * 0.07,
                    width: size.height * 0.4,
                    textStyle: KLabelStyle,
                  ),
                  Box.h(15),
                  _buildSignUpbtn()
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: AppFont.t.white,
        ),
        Box.h(10),
        Container(
          alignment: Alignment.center,
          height: 60.0,
          decoration: KBoxDecorationStyle,
          child: TextField(
            style: AppFont.t.white,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                top: 14,
              ),
              prefixIcon: Icon(
                Icons.email,
                color: Palette.white,
              ),
              hintText: 'Enter Your Email',
              hintStyle: KHinTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: AppFont.t.white,
        ),
        Box.h(10),
        Container(
          height: 60,
          alignment: Alignment.center,
          decoration: KBoxDecorationStyle,
          child: TextField(
            style: AppFont.t.white,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                top: 14,
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: Palette.white,
              ),
              hintText: 'Enter Your password',
              hintStyle: KHinTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("forgot password"),
        child: const Text(
          'Forgot Password',
          style: KLabelStyle,
        ),
      ),
    );
  }

  Widget _buildCheckRememberPass() {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Palette.white,
            ),
            child: Checkbox(
              value: _rememberME,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) => {
                setState(() {
                  _rememberME = value!;
                }),
              },
            ),
          ),
          const Text(
            'Remember Me',
            style: KLabelStyle,
          )
        ],
      ),
    );
  }

  Widget _buildSignUpbtn() {
    // return GestureDetector(
    //   child: RichText(
    //       text: TextSpan(children: [
    //     TextSpan(
    //       text: 'Don\'t have a account?',
    //       style: AppFont.t.white.w500,
    //     ),
    //     TextSpan(
    //       text: 'Sign Up',
    //     )
    //   ])),
    // );
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Don\'t have a account?',
          style: AppFont.t.white.w500,
        ),
        TextButton(
          onPressed: () {
            AppNavigator.push(Routes.signUpScreen);
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Palette.white,
            ),
          ),
        ),
      ],
    );
  }
}
