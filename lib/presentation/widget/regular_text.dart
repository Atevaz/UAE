import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/colors.dart';

class RegularText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
   int? maxLines;
  TextAlign? textAlign;
  final TextOverflow overflow;
  TextDecoration? decoration;

  RegularText({
    required this.text,
    this.color = Colors.grey,
    this.fontSize = 16,
    this.maxLines ,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,
    this.decoration,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'Regular',
          fontSize: fontSize.sp,
          overflow: overflow,
        decoration: decoration ,
      ),
      maxLines:maxLines ,
      textAlign:textAlign ,
    );
    
  }
}
