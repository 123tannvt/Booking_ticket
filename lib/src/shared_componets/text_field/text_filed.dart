import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final String? icon;
  final String? textInput;
  const MyTextField({super.key, required this.text, this.icon, this.textInput});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            text,
            style: AppFont.t.white.w600,
          ),
          Box.h(5),
          Container(
            decoration: KBoxDecorationStyle,
            child: TextField(
              style: AppFont.t.white,
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
                // prefixIcon: Icon(
                //     // Icons.icon,
                //     // color: Palette.white,
                //     ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
