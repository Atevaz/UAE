import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class OldOrders extends StatelessWidget {
  final String name = 'Red Grapes';
  final String quantity = '6 cartoons';
  final double price = 1440;
  final double priceAfterDiscount = 1100;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: 350.w,
            height: 122.h,
            decoration: BoxDecoration(
              color: AppColor.containerBG.withOpacity(.33),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HeadLineText(
                          text: 'Name :',
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        HeadLineText(
                          fontFamily: 'Roboto',
                          text: 'Quantities :',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        HeadLineText(
                          text: 'Price :',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        ),
                        HeadLineText(
                          text: 'Price after discount :',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RegularText(
                          text: name,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.teal,
                          fontFamily: 'Roboto',
                        ),
                        RegularText(
                          text: quantity,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.teal,
                          fontFamily: 'Roboto',
                        ),
                        RegularText(
                          text: '${price.truncate()} LE',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColor.teal,
                          fontFamily: 'Roboto',
                        ),
                        RegularText(
                          text: '${priceAfterDiscount.truncate()} LE',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColor.teal,
                          fontFamily: 'Roboto',
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
