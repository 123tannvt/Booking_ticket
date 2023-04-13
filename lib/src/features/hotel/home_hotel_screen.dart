import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/hotel/widget/buildTopBar.dart';
import 'package:flutter/material.dart';

class HomeHotelScreen extends StatefulWidget {
  const HomeHotelScreen({super.key});

  @override
  State<HomeHotelScreen> createState() => _HomeHotelScreenState();
}

class _HomeHotelScreenState extends State<HomeHotelScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    Color defaultColor = isDarkMode ? Palette.white : Palette.black;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Palette.bgColor,
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(
            top: size.height * 0.02,
            left: size.width * 0.05,
            right: size.width * 0.05),
        child: ListView(
          children: [
            buildTopBarHotel(defaultColor, size),
            Divider(
              color: defaultColor,
              thickness: 0.25,
              height: size.height * 0.015,
            )
          ],
        ),
      ),
    ));
  }
}
