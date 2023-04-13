import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/view/widget/appbar_model.dart';
import 'package:book_tiket/src/features/screen.dart';
import 'package:book_tiket/src/utils/app_list.dart';
import 'package:flutter/material.dart';

class SearchFlight extends StatefulWidget {
  const SearchFlight({super.key});

  @override
  State<SearchFlight> createState() => _SearchFlightState();
}

class _SearchFlightState extends State<SearchFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBarModel(
          backleading: true,
          onTapLeadingWidget: () {
            AppNavigator.pop();
          },
          childWidegt: Text(
            'Ha Noi - Tp.HCM',
            style: AppFont.t.w600.white.s(20),
          )),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 20),
          children: [
            GestureDetector(
              onTap: () {
                AppNavigator.push(Routes.paymentSceen);
              },
              child: Column(
                  children: ticketList
                      .map((e) =>
                          TicketView(isColor: null, ticketMondayModel: e))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
