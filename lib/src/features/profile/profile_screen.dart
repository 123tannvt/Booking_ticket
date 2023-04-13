import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/view/widget/app_bar_more.dart';
import 'package:book_tiket/src/shared_componets/dashline/column_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.bgColor,
        appBar: appBarMore(),
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Box.h(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile1.png'),
                    ),
                  ),
                ),
                Box.w(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Tracyy Travel",
                      style: AppFont.t.w700.s(18),
                    ),
                    Box.h(2),
                    Text(
                      "Viet Nam",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Box.h(8),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(100)),
                          color: const Color(0xFFFEF4F3)),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(3),
                          vertical: AppLayout.getHeight(3)),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF526799)),
                            child: const Icon(
                              FontAwesomeIcons.shield,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          Box.h(5),
                          const Text(
                            "Premium status",
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Box.h(5),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Box.h(8),
            Divider(
              color: Colors.grey.shade300,
            ),
            Box.h(8),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Palette.grayTicket,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                ),
                Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18, color: const Color(0xFF264CD2))),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FontAwesomeIcons.lightbulb,
                          color: Palette.grayTicket,
                          size: 27,
                        ),
                      ),
                      Box.w(5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bạn Có Giải Thưởng",
                            style: AppFont.t.w500.white,
                          ),
                          Text(
                            "Bạn Có 75 chuyến bay vào năm Nay",
                            style: AppFont.t.w500.white.s(15),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Box.h(5),
            Text(
              " Quãng Đường Bay Tích Lũy (Năm)",
              style: AppFont.t.w500.s(18),
            ),
            Box.h(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                  color: Palette.bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]),
              child: Column(
                children: [
                  Box.h(15),
                  Text(
                    "192802",
                    style: AppFont.t.w600.s(45),
                  ),
                  Box.h(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tích Lũy Tháng",
                        style: AppFont.t.w500.s(16),
                      ),
                      Text(
                        "9 Tháng 1 Năm 2023",
                        style: AppFont.t.w500.s(16),
                      ),
                    ],
                  ),
                  Box.h(10),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Box.h(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(
                        fristText: "23 042",
                        secondText: "KM",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayout(
                        fristText: 'VietNam Ariline',
                        secondText: "Hãng Bay Nhiều Nhất",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Box.h(5),
                  const Divider(),
                  Box.h(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(
                        fristText: "24",
                        secondText: "KM/Tuần",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayout(
                        fristText: "nvan",
                        secondText: "nvt@gmail.com",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Box.h(5),
                  const Divider(),
                  Box.h(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(
                        fristText: "52 340",
                        secondText: "Km/Quý",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayout(
                        fristText: "Du Parc Hannoi",
                        secondText: "Khách Sản Yêu Thích Nhất",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Box.h(20),
            InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  "Cùng Chúng Tôi bay, Bay Đến Mọi Nơi Nhé!",
                  style: AppFont.t.w600.s(16).primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
