import 'package:book_tiket/src/shared_componets/button/button_primary.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    inputFile(
                      label: "Username",
                      textInputType: TextInputType.text,
                    ),
                    inputFile(
                      label: "Email",
                      textInputType: TextInputType.text,
                    ),
                    inputFile(
                      label: "Password",
                      textInputType: TextInputType.text,
                    ),
                    inputFile(
                      label: "Confirm Password",
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),
              Box.h(10),
              ButtonPrimary(
                action: () async{
                 String data= await AppNavigator.push(Routes.loginScreen);
                },
                text: 'Sign Up',
                height: size.height * 0.06,
                width: size.width * 0.35,
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
