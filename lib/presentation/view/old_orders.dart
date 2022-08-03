import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../../constants/assets_manager.dart';
import '../../data/models/old_order_model.dart';
import '../widget/custom_app_bar.dart';

class OldOrders extends StatelessWidget {
  OldOrders({Key? key, required this.showAppBar, required this.showSideImage})
      : super(key: key);

  bool showAppBar = false;
  bool showSideImage = false;

  final List<OldOrderModel> oldOrderList = [
    OldOrderModel(
        quantity: 6,
        price: 1440,
        productName: 'Red Grapes',
        priceAfterDiscount: 1100),
    OldOrderModel(
        quantity: 1,
        price: 200,
        productName: 'Banana spagiti',
        priceAfterDiscount: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: showAppBar
            ? CustomAppBar(
                leadingIcon: Icons.arrow_back_ios,
                centerWidget: HeadLineText(
                  text: 'Cart',
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ))
            : null,
        body: Stack(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: ListView.builder(
                    itemCount: oldOrderList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      RegularText(
                                        text: oldOrderList[index].productName,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColor.teal,
                                        fontFamily: 'Roboto',
                                      ),
                                      RegularText(
                                        text:
                                            '${oldOrderList[index].quantity} cartoons',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColor.teal,
                                        fontFamily: 'Roboto',
                                      ),
                                      RegularText(
                                        text: '${oldOrderList[index].price} LE',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: AppColor.teal,
                                        fontFamily: 'Roboto',
                                      ),
                                      RegularText(
                                        text:
                                            '${oldOrderList[index].priceAfterDiscount.truncate()} LE',
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
                      );
                    })),

            /// top side image
            if (showSideImage)
              Positioned(child: Image.asset(AssetsManager.sidePic), right: 0),
          ],
        ),
      ),
    );
  }
}
