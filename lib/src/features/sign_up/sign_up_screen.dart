import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:book_tiket/src/features/sign_up/cubit/sign_up_cubit.dart';
import 'package:book_tiket/src/shared_componets/button/button_primary.dart';
import 'package:book_tiket/src/shared_componets/dialog/dialog.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/config.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController userNameController = TextEditingController();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  late final TextEditingController passConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Box.h(10),
                  Text(
                    'Create a account, I\'s free',
                    style: AppFont.t.w500,
                  ),
                ],
              ),
              Box.h(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    inputFile(
                      controller: userNameController,
                      label: "Username",
                      textInputType: TextInputType.text,
                    ),
                    inputFile(
                      controller: emailController,
                      label: "Email",
                      textInputType: TextInputType.text,
                    ),
                    inputFile(
                      obscureText: true,
                      controller: passwordController,
                      label: "Password",
                      textInputType: TextInputType.text,
                    ),
                    inputFile(
                      obscureText: true,
                      controller: passConfirmController,
                      label: "Confirm Password",
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),
              Box.h(10),
              BlocConsumer<SignUpCubit, SignUpState>(
                listener: (context, state) {
                  if (state is SignUpSateLoading) {
                    showLoading();
                  }
                  if (state is SignUpStateSuccess) {
                    dismissLoading();
                    AppNavigator.push(Routes.loginScreen);
                  }
                  if (state is SignUpStateFasle) {
                    AnimatedSnackBar.material('Không thể đăng ký tài khoản',
                            type: AnimatedSnackBarType.error,
                            duration: const Duration(seconds: 2),
                            mobileSnackBarPosition: MobileSnackBarPosition.top,
                            desktopSnackBarPosition: DesktopSnackBarPosition.topCenter)
                        .show(context);
                  }
                },
                builder: (context, state) {
                  return ButtonPrimary(
                    action: () async {
                      if (userNameController.text.isEmpty ||
                          emailController.text.isEmpty ||
                          passwordController.text.isEmpty ||
                          passConfirmController.text.isEmpty) {
                        dismissLoadingShowError('Không được bỏ trống!');
                      } else if (passConfirmController.text != passwordController.text) {
                        dismissLoadingShowError('Mật khẩu nhập lại chưa chính xác!');
                      } else if (validators.isVaildEmail(emailController.text) == false) {
                        dismissLoadingShowError('email không đúng định dạng!');
                      } else if (validators.isValidPassword(passwordController.text) == false) {
                        dismissLoadingShowError('Độ dài mật khẩu chưa đủ!');
                      } else {
                        context.read<SignUpCubit>().signIn(
                              email: emailController.text,
                              username: userNameController.text,
                              password: passConfirmController.text,
                            );
                      }
                      SharedPreferences preEmail = await SharedPreferences.getInstance();
                      setState(() {
                        preEmail.setString('email', emailController.text);
                      });
                    },
                    text: 'Sign Up',
                    height: size.height * 0.06,
                    width: size.width * 0.35,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an accout? ',
                    style: AppFont.t.w500,
                  ),
                  TextButton(
                      onPressed: () {
                        AppNavigator.pop();
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Palette.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget inputFile({
    label,
    obscureText = false,
    required TextInputType textInputType,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppFont.t.black.w600,
        ),
        Box.h(5),
        TextFormField(
          obscureText: obscureText,
          keyboardType: textInputType,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 5),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        Box.h(20),
      ],
    );
  }
}
