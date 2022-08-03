import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

Widget defaultButton({
  required String label,
  required Function onPressed,
  required double fontSize,
  required context,
  required bool isExpanded,
  double? width,
  double? height,
  Color? color,
  double borderRadius = 25,
  FontWeight fontWeight = FontWeight.bold,
  String? fontFamily,
}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: isExpanded ? 350.w : width ?? 202.w,
      height: height ?? 65.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color ?? AppColor.teal,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: MaterialButton(
        minWidth: 0,
        padding: EdgeInsets.zero,
        onPressed: () {
          onPressed();
        },
        child: Text(
          label,
          style: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: fontWeight,
              fontFamily: fontFamily),
          textAlign: TextAlign.center,
        ),
      ),
    );
