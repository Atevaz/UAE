import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:h_m/constants/constants.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

class PaymentItemComponent extends StatelessWidget {
  bool isSelected;
  final String image;
  final String title;
  final VoidCallback onPressed;
  PaymentItemComponent({
    Key? key,
    this.isSelected = false,
    required this.image,
    this.title = 'Credit Card',
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 90.h,
        width: 90.w,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: isSelected ? AppColor.blueGrey : AppColor.surface,
            borderRadius: BorderRadius.circular(20.r)),
        child: Padding(
          padding: EdgeInsets.all(14.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                image,
                width: 40.w,
                height: 40.h,
              ),
              MediumText(
                text: title,
                fontSize: 10.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
