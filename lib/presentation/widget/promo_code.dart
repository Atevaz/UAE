import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/default_button.dart';

class PromoCode extends StatelessWidget {
  PromoCode({Key? key, required this.controller, required this.onPressed})
      : super(key: key);
  final TextEditingController? controller;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: 350.w,
      height: 48.h,
      decoration: BoxDecoration(
          color: AppColor.containerBG, borderRadius: BorderRadius.circular(19)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter your promo code',
                labelStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppColor.black.withOpacity(.38))),
            controller: controller,
          )),
          DefaultButton(
              label: 'Send',
              width: 102.w,
              height: 48.h,
              onPressed: () {},
              fontSize: 20,
              context: context,
              isExpanded: false,
              color: AppColor.teal,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              borderRadius: 12),
        ],
      ),
    );
  }
}
