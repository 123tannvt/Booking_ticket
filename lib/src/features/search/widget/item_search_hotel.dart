import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';

class ItemSearchHotel extends StatelessWidget {
  const ItemSearchHotel(
      {super.key,
      required this.firtTitle,
      required this.scecondTitle,
      required this.icon,
      required this.ontap});
  final String firtTitle;
  final String scecondTitle;
  final IconData icon;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: size.height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(AppLayout.getHeight(15)),
          ),
          color: Palette.white,
        ),
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF526799).withOpacity(0.45),
              ),
              child: Icon(
                icon,
                color: Palette.primary,
                size: 25,
              ),
            ),
            Box.w(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firtTitle,
                  style: AppFont.t.w600.s(16),
                ),
                Box.h(5),
                Text(
                  scecondTitle,
                  style: AppFont.t.w500,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
