import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/model/user_model.dart';
import 'package:book_tiket/src/features/profile/view/widget/appbar_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget appBarMore({UserModel? userModel}) {
  return AppBarModel(
    childWidegt: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 12),
          height: 50,
          width: 50,
          color: Palette.primary,
          child: Center(
            child: Image.asset('assets/images/Rsss.png'),
          ),
        ),
        Box.w(5),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // userModel.userName ?? '',
              'Jame',
              style: AppFont.t.w600.white,
            ),
            Text(
              // userModel.email ?? '',
              'jame@gmail.com',
              style: AppFont.t.white.w600,
            )
          ],
        ),
        Box.w(140),
        PopupMenuButton(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          itemBuilder: (BuildContext context) {
            return [
              _buildPopMenu('Edit', FontAwesomeIcons.userPen, 1),
              _buildPopMenu('Logout', FontAwesomeIcons.arrowRightFromBracket, 2)
            ];
          },
          onSelected: (value) {
            if (value == 1) {
              AppNavigator.push(Routes.editProfileScreen);
            }
            if (value == 2) {
              AppNavigator.pop(Routes.loginScreen);
            }
          },
        )
      ],
    ),
    backleading: false,
  );
}

PopupMenuItem _buildPopMenu(String text, IconData icon, int value) {
  return PopupMenuItem(
    value: value,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icon,
          color: Palette.black,
        ),
        Text(
          text,
          style: AppFont.t.w500,
        )
      ],
    ),
  );
}
