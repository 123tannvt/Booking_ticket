import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Box {
  static SizedBox h(double size) => SizedBox(height: size.h);
  static SizedBox w(double size) => SizedBox(width: size.w);
  static SizedBox s(double size) => SizedBox(
        height: size.h,
        width: size.w,
      );
}
