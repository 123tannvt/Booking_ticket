import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/hotel/models/hotel_model.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final HotelModel hotelModel;
  const HotelScreen({super.key, required this.hotelModel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return InkWell(
      onTap: () {},
      child: Container(
        width: size.width * 0.6,
        height: AppLayout.getHeight(350),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 17,
        ),
        margin: const EdgeInsets.only(right: 15, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(21)),
          color: Palette.grayTicket,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Palette.primary,
                image: DecorationImage(
                  image: AssetImage('assets/images/${hotelModel.img}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Box.h(10),
            Text(
              hotelModel.nameHotel ?? '',
              style: AppFont.t.white.s(22).w700,
            ),
            Box.h(5),
            Text(
              hotelModel.location ?? '',
              style: AppFont.t.white.s(16).w700,
              maxLines: 2,
            ),
            Box.h(10),
            Text(
              '${hotelModel.price}(VND)/night',
              style: AppFont.t.white.s(16).w700,
            ),
          ],
        ),
      ),
    );
  }
}
