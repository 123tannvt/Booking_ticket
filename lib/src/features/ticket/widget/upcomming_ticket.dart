import 'package:book_tiket/src/features/screen.dart';
import 'package:book_tiket/src/utils/app_list.dart';
import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../shared_componets/shared_componets.dart';
import 'package:barcode_widget/barcode_widget.dart';

class UpcommingTicket extends StatefulWidget {
  const UpcommingTicket({super.key});

  @override
  State<UpcommingTicket> createState() => _UpcommingTicketState();
}

class _UpcommingTicketState extends State<UpcommingTicket> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Column(
      children: [
        Box.h(20),
        TicketView(
          isColor: null,
          ticketMondayModel: ticketList[0],
        ),
        Box.h(15),
        Container(
          color: Palette.bgColor,
          margin: EdgeInsets.only(
            right: AppLayout.getHeight(16),
          ),
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
          child: Container(
            decoration: BoxDecoration(
                color: Palette.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppLayout.getHeight(15)))),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      fristText: 'jame',
                      secondText: 'Tên Khách Hàng',
                      isColor: false,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      fristText: '0234252',
                      secondText: 'Hộ chiếu',
                      isColor: false,
                    ),
                  ],
                ),
                Box.h(5),
                const Divider(
                  color: Palette.textColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      fristText: '09774532',
                      secondText: 'Số thẻ điện tử',
                      isColor: false,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      fristText: '012411',
                      secondText: 'Mã đặt vé',
                      isColor: false,
                    ),
                  ],
                ),
                Box.h(5),
                const Divider(
                  color: Palette.textColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/visa.png',
                              scale: 11,
                            ),
                            const Text('*** 0231'),
                          ],
                        ),
                        Box.h(5),
                        Text(
                          'Phương thức thanh toán',
                          style: AppFont.t.w500.grey,
                        )
                      ],
                    ),
                    const ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      fristText: '2.500.000',
                      secondText: 'Giá vé',
                      isColor: false,
                    ),
                  ],
                ),
                Box.h(20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    ),
                  ),
                  child: Container(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        data: '12345',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Palette.textColor,
                        width: double.infinity,
                        height: AppLayout.getHeight(70),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
