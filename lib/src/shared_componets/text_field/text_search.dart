import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/widgets.dart';

class MyTextSearch extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget subWidget;
  const MyTextSearch({
    super.key,
    required this.icon,
    required this.text,
    required this.subWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Palette.grey,
              ),
              Box.w(15),
              Text(
                text,
                style: AppFont.t.w600.s(16),
              ),
            ],
          ),
          subWidget,
        ],
      ),
    );
  }
}
