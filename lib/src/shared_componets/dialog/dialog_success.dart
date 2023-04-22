import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/config.dart';

class DialogSuccess extends StatelessWidget {
  const DialogSuccess({super.key, required this.text, this.desc});
  final String text;
  final String? desc;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(30),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Success!',
              style: AppFont.t.primary.s(20),
            ),
            Box.h(20),
            Text(
              text,
              style: AppFont.t.black.s(18),
            ),
            if (desc != null)
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  desc!,
                  style: AppFont.t.s(15),
                ),
              )
          ],
        ),
      ),
    );
  }
}
