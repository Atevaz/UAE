import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/colors.dart';

class MediumText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final int maxLines;
  final TextOverflow overflow;
  TextAlign? textAlign;


  MediumText({
    required this.text,
    this.color = AppColor.black,
    this.fontSize = 20,
    this.maxLines = 3,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,


  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Medium',
        fontSize: fontSize.sp,
        overflow: overflow
      ),
      maxLines:maxLines ,
      textAlign:textAlign ,

    );
  }
}
