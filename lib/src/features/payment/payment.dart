import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/view/widget/appbar_model.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController quocTichController = TextEditingController();
  final TextEditingController soHoChieuController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarModel(
        backleading: true,
        onTapLeadingWidget: () {
          AppNavigator.pop();
        },
        childWidegt: Text(
          'Thanh Toán',
          style: AppFont.t.w600.white.s(20),
        ),
      ),
      backgroundColor: Palette.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(20),
            horizontal: AppLayout.getWidth(20)),
        children: [
          RichText(
            text: TextSpan(
                text: 'Điền Thông Tin \n',
                style: AppFont.t.w600.s(25),
                children: [
                  TextSpan(
                      text: 'Vui lòng điền đầy đủ thông tin',
                      style: AppFont.t.w400.s(16))
                ]),
            textAlign: TextAlign.center,
          ),
          Box.h(20),
          InputText(
            label: 'Họ Tên(như trên CCCD):',
            textEditingController: nameController,
            textInputType: TextInputType.text,
            hintText: 'Nguyen Van An',
          ),
          Box.h(10),
          InputText(
              label: 'Số điện thoại:',
              textEditingController: phoneController,
              textInputType: TextInputType.phone,
              hintText: '0986321923'),
          Box.h(10),
          InputText(
              label: 'Quốc Tịch:',
              textEditingController: quocTichController,
              textInputType: TextInputType.text,
              hintText: 'Việt Nam'),
          Box.h(10),
          InputText(
              label: 'Số hộ chiếu:',
              textEditingController: soHoChieuController,
              textInputType: TextInputType.number,
              hintText: '09326521'),
          Box.h(40),
          ButtonPrimary(
            height: AppLayout.getHeight(50),
            action: () {
              AppNavigator.push(Routes.ticketScreen);
            },
            text: 'Thanh Toán',
            textStyle: AppFont.t.w600.s(20).white,
          )
        ],
      ),
    ));
  }
}
