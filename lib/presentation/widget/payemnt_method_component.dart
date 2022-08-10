import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class PaymentMethodComponent extends StatelessWidget {
  PaymentMethodComponent(
      {Key? key, required this.text, this.isIcon = false, this.onPressed})
      : super(key: key);

  final String text;
  bool isIcon = false;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70.h,
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              children: [
                RegularText(
                  text: text,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: AppColor.black,
                ),
                Spacer(),
                isIcon
                    ? IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded),
                        color: AppColor.teal,
                        padding: EdgeInsets.zero,
                        onPressed: onPressed,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
