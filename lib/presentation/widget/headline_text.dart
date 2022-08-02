import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

class HeadLineText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final int maxLines;
  final TextOverflow overflow;
  final String? fontFamily;
  final FontWeight? fontWeight;
  HeadLineText(
      {required this.text,
      this.color = AppColor.black,
      this.fontSize = 25,
      this.maxLines = 1,
      this.overflow = TextOverflow.ellipsis,
      this.fontFamily = 'SemiBold',
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily,
          fontSize: fontSize.sp,
          overflow: overflow),
      maxLines: maxLines,
    );
  }
}
