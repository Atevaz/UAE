import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/constants.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

class PaymentItemComponent extends StatelessWidget {
  const PaymentItemComponent({
    Key? key,
    this.image = payment,
    this.title = 'Credit Card',
    required this.onPressed,
  }) : super(key: key);

  final String image;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          color: AppColor.blueGrey, borderRadius: BorderRadius.circular(20.r)),
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                payment,
                width: 40.w,
                height: 40.h,
              ),
              MediumText(
                text: title,
                fontSize: 12.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
