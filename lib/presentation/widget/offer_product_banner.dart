import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/assets_manager.dart';
import '../styles/colors.dart';
import 'regular_text.dart';

class OffersProductsBanner extends StatefulWidget {
  const OffersProductsBanner({
    Key? key,
  }) : super(key: key);

  @override
  State<OffersProductsBanner> createState() => _OffersProductsBannerState();
}

class _OffersProductsBannerState extends State<OffersProductsBanner> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: 168.w,
        height: 250.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.r),
                    child: Image.asset(
                      AssetsManager.grapes,
                      height: 100.h,
                      width: 120.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  RegularText(
                    text: 'Carton of Grapes',
                    color: AppColor.black,
                    fontFamily: 'Roboto',
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.r),
                    child: RegularText(
                      text: 'Saved 240 LE',
                      color: Colors.black54,
                      fontFamily: 'Roboto',
                      fontSize: 12.0.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.r,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RegularText(
                          text: '240 LE',
                          color: AppColor.grey,
                          fontFamily: 'Roboto',
                          fontSize: 12.0.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
                        RegularText(
                          text: '200 LE',
                          color: AppColor.red,
                          fontFamily: 'Roboto',
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 5.r, end: 10.r),
                      child: SizedBox(
                        width: 30.w,
                        height: 25.h,
                        child: IconButton(
                          onPressed: () {},
                          icon: RegularText(
                            text: 'Get',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.blue,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: !isFavorite
                    ? Icon(
                        Icons.favorite_border_rounded,
                        size: 26.r,
                        color: Color(0xfffb0505),
                      )
                    : Icon(
                        Icons.favorite,
                        size: 26.r,
                        color: Color(0xfffb0505),
                      ),
              ),
            ),
            Transform.translate(
              offset: Offset.fromDirection(45, -115.h),
              child: Transform.rotate(
                angle: -math.pi / 4.5,
                child: Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(end: 14.r),
                    child: Container(
                      color: AppColor.teal,
                      width: 130.w,
                      height: 26.h,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.r),
                          child: RegularText(
                            text: 'Best Seller',
                            fontSize: 11.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
