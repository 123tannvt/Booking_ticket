import 'package:book_tiket/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemGuestAndRoom extends StatefulWidget {
  const ItemGuestAndRoom(
      {Key? key, required this.text, required this.icon, this.intData = 0})
      : super(key: key);
  final String text;
  final IconData icon;
  final int intData;

  @override
  State<ItemGuestAndRoom> createState() => ItemGuestAndRoomState();
}

class ItemGuestAndRoomState extends State<ItemGuestAndRoom> {
  late final TextEditingController _textEditingController;
  final FocusNode _focusNode = FocusNode();
  late int number;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController =
        TextEditingController(text: widget.intData.toString())
          ..addListener(() {
            number = int.parse(_textEditingController.text);
          });
    number = widget.intData;
  }

  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppLayout.getHeight(15),
            ),
          ),
          color: Palette.white,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(5),
            vertical: AppLayout.getWidth(20)),
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Palette.second,
            ),
            Box.w(10),
            Text(
              widget.text,
              style: AppFont.t.w600.s(18),
            ),
            const Spacer(),
            _buildIcon(
              icon: FontAwesomeIcons.minus,
              onTap: () {
                if (number > 1) {
                  setState(
                    () {
                      number--;
                      _textEditingController.text = number.toString();
                      if (_focusNode.hasFocus) {
                        _focusNode.unfocus();
                      }
                    },
                  );
                }
              },
            ),
            Container(
              height: AppLayout.getHeight(40),
              width: AppLayout.getWidth(40),
              padding: const EdgeInsets.only(left: 3),
              alignment: Alignment.center,
              child: TextField(
                controller: _textEditingController,
                focusNode: _focusNode,
                textAlign: TextAlign.center,
                maxLines: 1,
                minLines: 1,
                enabled: true,
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 10),
                ),
                onChanged: (value) {},
                onSubmitted: (String submitValue) {},
              ),
            ),
            _buildIcon(
              icon: FontAwesomeIcons.plus,
              onTap: () {
                setState(
                  () {
                    if (number < 10) {
                      number++;
                      _textEditingController.text = number.toString();
                    }

                    if (_focusNode.hasFocus) {
                      _focusNode.unfocus();
                    }
                  },
                );
              },
            )
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
  }

  Widget _buildIcon({
    required IconData icon,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppLayout.getHeight(40),
        width: AppLayout.getWidth(40),
        decoration: const BoxDecoration(
            color: Palette.bgColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Icon(
          icon,
          size: 15,
          color: Palette.primary,
        ),
      ),
    );
  }
}
