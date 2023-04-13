import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText(
      {super.key,
      required this.label,
      required this.textEditingController,
      required this.textInputType,
      required this.hintText});
  final String label;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppFont.t.w600,
        ),
        Box.h(5),
        TextFormField(
          controller: textEditingController,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Palette.grey),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Palette.grey),
            ),
          ),
        )
      ],
    );
  }
}
