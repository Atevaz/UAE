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
}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: isExpanded ? 350.w : width ?? 202.w,
      height: height ?? 65.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color ?? AppColor.teal,
        borderRadius: BorderRadius.circular(25),
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
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
