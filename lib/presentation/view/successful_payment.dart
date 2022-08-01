import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

class SuccessfulPayment extends StatelessWidget {
  SuccessfulPayment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                AwesomeDialog(
                  dialogBorderRadius: BorderRadius.circular(30),
                  context: context,
                  width: double.infinity,
                  padding: EdgeInsets.zero,
                  dialogType: DialogType.NO_HEADER,
                  body: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 30,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AssetsManager.shopDialogPic),
                        HeadLineText(
                          text: 'Thank you for using ',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        HeadLineText(text: 'UAE app ', fontSize: 14.sp),
                        SizedBox(
                          height: 20,
                        ),
                        HeadLineText(
                            text: 'We will contact with you soon ',
                            fontSize: 12.sp),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60.h,
                          width: 202.w,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                              child: MediumText(
                                text: 'Ok',
                                color: AppColor.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        )
                      ],
                    ),
                  ),
                ).show();
              }),
        ),
      ),
    );
  }
}
