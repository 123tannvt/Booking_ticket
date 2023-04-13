import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

Row buildTopBarHotel(Color defaultColor, Size size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search Hotel',
            style: GoogleFonts.poppins(
              color: defaultColor.withOpacity(0.4),
              fontSize: size.height * 0.018,
            ),
          ),
          Row(
            children: [
              Icon(
                UniconsLine.location_pin_alt,
                color: Palette.primary,
                size: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.015,
                ),
                child: Text(
                  'Ha Noi',
                  style: GoogleFonts.lato(
                    color: defaultColor,
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: defaultColor.withOpacity(
              0.25,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            UniconsLine.search,
            color: Palette.primary,
            size: size.height * 0.03,
          ),
        ),
      )
    ],
  );
}
