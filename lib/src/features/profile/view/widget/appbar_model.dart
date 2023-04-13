import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarModel extends StatelessWidget with PreferredSizeWidget {
  AppBarModel(
      {super.key,
      this.title = '',
      this.titleColor = Palette.white,
      this.defaultColor = Palette.primary,
      this.iconColor = Palette.white,
      this.childWidegt = const SizedBox.shrink(),
      this.leadingWidget = const SizedBox.shrink(),
      this.onTapChildWidget,
      this.onTapLeadingWidget,
      this.action = const SizedBox.shrink(),
      this.backleading = true});
  final String title;
  final Color titleColor;
  final Color defaultColor;
  final Color iconColor;
  final Widget childWidegt;
  final Widget leadingWidget;
  final VoidCallback? onTapChildWidget;
  final VoidCallback? onTapLeadingWidget;
  final Widget action;
  bool backleading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(120),
      padding: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          color: defaultColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppLayout.getHeight(12)),
            bottomRight: Radius.circular(
              AppLayout.getHeight(12),
            ),
          )),
      child: Row(
        children: [
          _backButton(context),
          leadingWidget,
          Box.w(5),
          Text(
            title,
            style: AppFont.t.w500,
          ),
          InkWell(
            onTap: () {
              onTapChildWidget?.call();
            },
            child: childWidegt,
          ),
          action,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
  Widget _backButton(BuildContext context) {
    return backleading
        ? IconButton(
            onPressed: () {
              onTapLeadingWidget?.call();
            },
            icon: Icon(
              FontAwesomeIcons.angleLeft,
              color: iconColor,
            ),
          )
        : const SizedBox();
  }
}
