import 'package:book_tiket/src/features/search/widget/item_guset_and_room.dart';
import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../shared_componets/shared_componets.dart';
import '../../profile/view/widget/appbar_model.dart';

class GuestAndRoom extends StatefulWidget {
  const GuestAndRoom({super.key});

  @override
  State<GuestAndRoom> createState() => _GuestAndRoomState();
}

final GlobalKey<ItemGuestAndRoomState> _countGuest =
    GlobalKey<ItemGuestAndRoomState>();
final GlobalKey<ItemGuestAndRoomState> _countRoom =
    GlobalKey<ItemGuestAndRoomState>();

class _GuestAndRoomState extends State<GuestAndRoom> {
  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBarModel(
        onTapLeadingWidget: () {
          AppNavigator.pop();
        },
        backleading: true,
        childWidegt: Text(
          'Khách & Phòng',
          style: AppFont.t.w600.s(20),
        ),
      ),
      body: Column(
        children: [
          ItemGuestAndRoom(
            key: _countRoom,
            text: 'Số lượng phòng',
            icon: Icons.meeting_room,
            intData: 1,
          ),
          Box.h(20),
          ItemGuestAndRoom(
            key: _countGuest,
            text: 'Người lớn',
            icon: Icons.people_alt,
            intData: 2,
          ),
          Box.h(30),
          ButtonPrimary(
            height: size.height * 0.058,
            width: size.width * 0.9,
            action: () {
              AppNavigator.pop([
                _countRoom.currentState!.number,
                _countGuest.currentState!.number
              ]);
            },
            text: 'Chọn',
            textStyle: AppFont.t.w600.s(20).white,
          )
        ],
      ),
    ));
  }
}
