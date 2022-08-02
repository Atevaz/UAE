import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double height;
  final double width;
  final bool isExpanded;
  final Color color;

  DefaultButton({
    required this.label,
    required this.onPressed,
    required this.isExpanded,
    this.height = 65,
    this.width = 202,
    this.color = AppColor.teal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: isExpanded ? 350.w : width.w,
      height: height.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
        minWidth: 0,
        padding: EdgeInsets.zero,
        onPressed: () {
          onPressed();
        },
        child: MediumText(
          text: label,
          color: AppColor.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
