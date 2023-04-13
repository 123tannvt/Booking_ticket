import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/shared_componets/shared_componets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'model/ticket_monday_model.dart';

class TicketView extends StatelessWidget {
  bool? isColor;
  final TicketMondayModel ticketMondayModel;

  TicketView(
      {super.key, required this.isColor, required this.ticketMondayModel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    DateFormat format = DateFormat("yyyy-MM-dd");
    final String ngaydi = format.format(ticketMondayModel.ngaydi);
    final String ngayden = format.format(ticketMondayModel.ngayden);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(210),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Palette.grayTicket : Palette.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(20)),
                  topRight: Radius.circular(AppLayout.getHeight(20)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketMondayModel.tenmb,
                        style: AppFont.t.white,
                      ),
                      Box.w(5),
                      Text(
                        '-${ticketMondayModel.plane_no}',
                        style: AppFont.t.white,
                      )
                    ],
                  ),
                  Box.h(5),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticketMondayModel.maSanbaydi,
                        style: AppFont.t.white.w600.s(16),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const DashlineWidget(
                              sections: 4,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                FontAwesomeIcons.planeUp,
                                color: Palette.white,
                              ),
                            ),
                          )
                        ]),
                      ),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        ticketMondayModel.maSanbayden,
                        style: AppFont.t.white.w600.s(16),
                      ),
                    ],
                  ),
                  Box.h(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: AppLayout.getHeight(40),
                        width: AppLayout.getWidth(90),
                        child: Text(
                          ticketMondayModel.sanbaydi,
                          style: AppFont.t.white.w600.s(16),
                        ),
                      ),
                      Text(
                        ticketMondayModel.duration,
                        style: AppFont.t.white.w600,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        height: AppLayout.getHeight(40),
                        child: Text(
                          ticketMondayModel.sanbayden,
                          style: AppFont.t.white.w600.s(16),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                color: isColor == null ? Palette.orangeTicket : Palette.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(12),
                      child: const DecoratedBox(
                          decoration: BoxDecoration(
                              color: Palette.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: DashlineWidget(
                          sections: 1,
                          width: 8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: const DecoratedBox(
                          decoration: BoxDecoration(
                              color: Palette.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: AppLayout.getHeight(55),
              decoration: BoxDecoration(
                  color: isColor == null ? Palette.orangeTicket : Palette.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 20 : 0),
                    bottomRight: Radius.circular(isColor == null ? 20 : 0),
                  )),
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      fristText: ngaydi,
                      secondText: 'date'),
                  ColumnLayout(
                      alignment: CrossAxisAlignment.center,
                      fristText: ticketMondayModel.giodi,
                      secondText: 'Departure Time'),
                  ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      fristText: ngayden,
                      secondText: 'date'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
