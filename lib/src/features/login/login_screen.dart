import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/login/cubit/login_cubit.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late bool isActiveButton;
  String? err;

  @override
  void initState() {
    super.initState();
    isActiveButton = false;
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordController.addListener(validateButton);
    emailController.addListener(validatEmail);
  }

  @override
  void dispose() {
    passwordController.removeListener(validateButton);
    emailController.removeListener(validatEmail);
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void validateButton() {
    setState(() {
      if (validators.isValidPassword(passwordController.text)) {
        isActiveButton = true;
        err = null;
      } else if (passwordController.text.isEmpty) {
        isActiveButton = false;
        err = 'Không  bỏ trống mật khẩu';
      } else {
        err = null;
      }
    });
  }

  void validatEmail() {
    setState(() {
      if (validators.isVaildEmail(emailController.text)) {
        isActiveButton = true;
        err = null;
      } else if (emailController.text.isEmpty) {
        isActiveButton = false;
        err = 'không bỏ trống email';
      } else {
        err = null;
      }
    });
  }

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
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
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
                  // BlocListener<LoginCubit, LoginState>(listener: (context, state) {
                  //   if (state is LoginStateLoading) {
                  //     showLoading();
                  //   }
                  //   if(state is LoginStateSuccess){

                  //   }
                  // }),
                  _buildForgotPasswordBtn(),
                  Box.h(10),
                  _buildCheckRememberPass(),
                  Box.h(10),
                  BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if (state is LoginStateLoading) {
                        showLoading();
                        dismissLoading();
                      }
                      if (state is LoginStateSuccess) {
                        dismissLoading();
                        AppNavigator.push(Routes.bottomNavBar);
                      }
                      if (state is LoginStateFasle) {
                        dismissLoadingShowError(err);
                      }
                    },
                    builder: (context, state) {
                      return ButtonPrimary(
                        action: () {},
                        //  context.read<LoginCubit>().login(
                        //       email: emailController.text,
                        //       password: passwordController.text,
                        //     )
                        // ,
                        text: 'Đăng nhập',
                        height: size.height * 0.07,
                        width: size.height * 0.4,
                        textStyle: KLabelStyle,
                      );
                    },
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
            controller: emailController,
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
            obscureText: true,
            controller: passwordController,
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
              value: isActiveButton,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) => {
                setState(() {
                  isActiveButton = value!;
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
