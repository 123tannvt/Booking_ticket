import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/view/widget/appbar_model.dart';
import 'package:book_tiket/src/shared_componets/button/button_primary.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBarModel(
        onTapLeadingWidget: () {
          Navigator.pop(context);
        },
        backleading: true,
        childWidegt: Text(
          'Sửa hồ sơ của tôi',
          style: AppFont.t.w700.s(20).white,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          _inputText(
              textInputType: TextInputType.text,
              hinText: ' ',
              lable: 'UserName',
              obscureText: false),
          _inputText(
              textInputType: TextInputType.text,
              hinText: ' ',
              lable: 'Email',
              obscureText: false),
          _inputText(
              textInputType: TextInputType.text,
              hinText: ' ',
              lable: 'Họ Tên (như CCCD)',
              obscureText: false),
          _inputText(
              textInputType: TextInputType.number,
              hinText: ' ',
              lable: 'Số Hộ Chiếu',
              obscureText: false),
          _inputText(
              textInputType: TextInputType.text,
              hinText: ' ',
              lable: 'Địa chỉ',
              obscureText: false),
          Box.h(10),
          ButtonPrimary(
            height: AppLayout.getHeight(50),
            action: () {
              AppNavigator.pop();
            },
            text: 'Lưu Thông Tin',
            textStyle: AppFont.t.w600.white.s(16),
          ),
          Box.h(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bạn không muốn thay đổi thông tin',
                style: AppFont.t.w500.s(16),
              ),
              TextButton(
                  onPressed: () {
                    AppNavigator.pop();
                  },
                  child: Text(
                    'Hủy',
                    style: AppFont.t.w600.primary.s(18),
                  ))
            ],
          )
        ],
      ),
    ));
  }

  Widget _inputText({
    lable,
    obscureText = false,
    required TextInputType textInputType,
    required String hinText,
    // TextEditingController textEditingController,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: AppFont.t.w400.s(16),
        ),
        Box.h(5),
        TextField(
          // controller: TextEditingController,
          obscureText: obscureText,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hinText,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.grey,
              ),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Palette.grey)),
          ),
        ),
        Box.h(10),
      ],
    );
  }
}
