import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/ticket/widget/upcomming_ticket.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    var brigthness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brigthness == Brightness.dark;
    Color defaultColor = isDarkMode ? Palette.white : Palette.black;
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Palette.bgColor,
            body: SizedBox(
              child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        sliver: SliverSafeArea(
                            top: false,
                            sliver: SliverAppBar(
                              elevation: 0,
                              expandedHeight: 100,
                              backgroundColor: Palette.bgColor,
                              automaticallyImplyLeading: false,
                              flexibleSpace: FlexibleSpaceBar(
                                stretchModes: const <StretchMode>[
                                  StretchMode.zoomBackground,
                                  StretchMode.blurBackground,
                                  StretchMode.fadeTitle,
                                ],
                                background: Container(
                                  alignment: Alignment.topCenter,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    'Ticket',
                                    style: AppFont.t.black.w600.s(28),
                                  ),
                                ),
                              ),
                              primary: true,
                              forceElevated: innerBoxIsScrolled,
                              bottom: TabBar(tabs: [
                                Tab(
                                  icon: const Icon(
                                    FontAwesomeIcons.plane,
                                    color: Palette.primary,
                                  ),
                                  child: Text(
                                    'Flight',
                                    style: AppFont.t.w500,
                                  ),
                                ),
                                Tab(
                                  icon: const Icon(
                                    FontAwesomeIcons.hotel,
                                    color: Palette.primary,
                                  ),
                                  child: Text(
                                    'Hotel',
                                    style: AppFont.t.w500,
                                  ),
                                )
                              ]),
                            )),
                      ),
                    ];
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  body: const TabBarView(
                    children: [
                      UpcommingTicket(),
                      Scaffold(
                        backgroundColor: Palette.grey,
                      )
                    ],
                  )),
            ),
          )),
    );
  }
}
