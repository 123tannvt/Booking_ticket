import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListSearchAirport extends StatefulWidget {
  const ListSearchAirport({super.key, this.stateSetter});
  final StateSetter? stateSetter;
  @override
  State<ListSearchAirport> createState() => _ListSearchAirportState();
}

class _ListSearchAirportState extends State<ListSearchAirport> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.angleRight,
          color: Palette.grey,
        ));
  }

  void _buildListAirport(BuildContext context) {
    // return showModalBottomSheet(context: context,
    // elevation: 0,
    // backgroundColor: blackBarrie,
    // isDismissible: true,
    // builder: (context){
    //   return listAirport();
    // })
  }
}
