import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/assets_manager.dart';
import '../styles/colors.dart';
import '../widget/regular_text.dart';

class PopularBanner extends StatelessWidget {
  PopularBanner({
    Key? key,
    this.isOffer = false ,
    this.isFavourite = true
  }) : super(key: key);

  final bool isOffer;
  final bool isFavourite;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: EdgeInsets.all(8.r),
      width: 168.w,
      height: 229.h,
      decoration: BoxDecoration(
        color: Color(0x26c06c7f),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              if(isFavourite)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.h,
                      right: 15.w,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite,
                        size: 14.sp,
                        color: Color(0xfffb0505),
                      ),
                    ),
                  )
                ],
              ),
              Image.asset(AssetsManager.grapes,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RegularText(
                    text: 'Carton of Grapes',
                    color: AppColor.black,
                    fontFamily: 'Roboto',
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  RegularText(
                    text: '240 EGP',
                    color: AppColor.teal,
                    fontFamily: 'Roboto',
                    fontSize: 11.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 11.0.w,
                  ),
                  Expanded(
                    child: RegularText(
                      text: 'Every carton has 15 k of red grapes',
                      color: AppColor.black,
                      fontFamily: 'Roboto',
                      fontSize: 11.0.sp,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: AppColor.teal,
                      child: Icon(
                        Icons.add,
                        color: AppColor.white,
                      ),
                    ),
                    color: AppColor.teal,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          //if(isOffer)
            Transform.translate(
              offset: Offset.fromDirection(45,-100),
              child: Transform.rotate(
                angle: - math.pi / 4,
                child: Center(
                  child: Container(
                    color: AppColor.teal,
                    width: 114.w,
                    height: 26.h,
                    child: Center(
                      child: RegularText(
                        text: 'Best Seller',
                        fontSize: 11,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}