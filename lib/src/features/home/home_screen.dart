import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:book_tiket/src/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    Color defaultColor = isDarkMode ? Palette.white : Palette.black;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F6FD),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerHome(),
              Box.h(15),
              TextField(
                onEditingComplete: () => print("search destination"),
                decoration: const InputDecoration(
                  hintText: 'Search your destinalsion',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Palette.black,
                      size: kItermPaddig,
                    ),
                  ),
                  filled: true,
                  fillColor: Palette.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
              ),
              Box.h(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chuyến bay sắp tới',
                    style: AppFont.t.black.w600.s(20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Tất cả',
                      style: AppFont.t.primary,
                    ),
                  ),
                ],
              ),
              Box.h(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: ticketList
                        .map((e) =>
                            TicketView(isColor: null, ticketMondayModel: e))
                        .toList()),
              ),
              Box.h(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Khách sạn',
                    style: AppFont.t.black.w600.s(20),
                  ),
                  InkWell(
                    onTap: () {
                      AppNavigator.push(Routes.homeHotelScreen);
                    },
                    child: Text(
                      'Tất cả',
                      style: AppFont.t.primary,
                    ),
                  ),
                ],
              ),
              Box.h(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: hotelList
                        .map((e) => HotelScreen(hotelModel: e))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerHome() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Jame!',
                style: AppFont.t.black.w700.s(20),
              ),
              Box.h(5),
              Text(
                'where are you going next?',
                style: AppFont.t.black,
              )
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  'assets/images/R.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
