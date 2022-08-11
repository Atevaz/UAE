import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/assets_manager.dart';
import '../styles/colors.dart';
import '../widget/headline_text.dart';
import '../widget/medium_text.dart';
import '../widget/regular_text.dart';

class CartView extends StatelessWidget {
  CartView(
      {this.quantity = 5,
      this.price = 100,
      this.productName = 'Red Grapes',
      this.imageName = AssetsManager.grape});
  int? quantity;
  int? price;
  String productName;
  String imageName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.r),
      child: Container(
        height: 108.h,
        width: 350.w,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.1),
            borderRadius: BorderRadius.circular(10.r)),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// image
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage(imageName),
                  ),
                ),

                /// name , quantity and price
                Expanded(
                    flex: 2,
                    child: Container(
                      padding:
                          EdgeInsets.only(top: 10.h, right: 10.w, bottom: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          /// name row
                          Row(
                            children: [
                              HeadLineText(
                                text: 'Name : ',
                                fontSize: 15.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                              RegularText(
                                text: productName,
                                fontSize: 14.sp,
                                color: AppColor.teal,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              )
                            ],
                          ),

                          /// quantity row
                          Row(
                            children: [
                              HeadLineText(
                                text: 'Quantities : ',
                                fontSize: 15.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                              RegularText(
                                text: '$quantity cartoons',
                                fontSize: 14.sp,
                                color: AppColor.teal,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              )
                            ],
                          ),

                          /// price row
                          Row(
                            children: [
                              HeadLineText(
                                text: 'Price : ',
                                fontSize: 15.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                              RegularText(
                                text: '$price LE',
                                fontSize: 14.sp,
                                color: AppColor.teal,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 5.r),
                  child: Container(
                    width: 79.w,
                    height: 33.h,
                    decoration: BoxDecoration(
                      color: AppColor.teal,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              quantity = quantity! - 1;
                              print(quantity);
                            },
                            iconSize: 14,
                            color: AppColor.white,
                            icon: Icon(
                              Icons.remove,
                            ),
                          ),
                        ),
                        Expanded(
                            child: MediumText(
                          text: quantity.toString(),
                          textAlign: TextAlign.center,
                          color: AppColor.white,
                          fontSize: quantity! > 99 ? 10.sp : 14.sp,
                        )),
                        Expanded(
                            child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            quantity = quantity! + 1;
                          },
                          iconSize: 14.sp,
                          color: AppColor.white,
                          icon: Icon(
                            Icons.add,
                          ),
                        )),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
