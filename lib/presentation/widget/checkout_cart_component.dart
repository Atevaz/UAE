import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class CheckOutCart extends StatelessWidget {
  CheckOutCart({
    Key? key,
    required this.mainText,
    required this.trailingText,
    this.mainTextFontWeight = FontWeight.w400,
    this.color = AppColor.black,
  }) : super(key: key);

  final String mainText;
  final String trailingText;
  final FontWeight? mainTextFontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: 350.w,
        height: 48.h,
        decoration: BoxDecoration(
            color: AppColor.containerBG,
            borderRadius: BorderRadius.circular(19)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// leading text
            RegularText(
              text: mainText,
              color: AppColor.black,
              fontFamily: 'Roboto',
              fontSize: 15.sp,
              fontWeight: mainTextFontWeight,
            ),

            /// trailing text
            RegularText(
              text: trailingText,
              color: color,
              fontFamily: 'Roboto',
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
