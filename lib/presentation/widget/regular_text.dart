import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegularText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  int? maxLines;
  TextAlign? textAlign;
  final TextOverflow overflow;
  TextDecoration? decoration;
  String? fontFamily;
  final FontWeight? fontWeight;

  RegularText(
      {required this.text,
      this.color = Colors.grey,
      this.fontSize = 16,
      this.maxLines,
      this.overflow = TextOverflow.ellipsis,
      this.textAlign,
      this.decoration,
      this.fontWeight,
      this.fontFamily = 'Regular'});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontSize: fontSize.sp,
        overflow: overflow,
        decoration: decoration,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
