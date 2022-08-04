import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_phone_number_form_field.dart';
import 'package:h_m/presentation/widget/icon.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class LogInScreen extends StatelessWidget {
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.teal,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                          image: AssetImage(AssetsManager.girlCircle),
                        )
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: DefaultPhoneNumFormField(
                                controller: controller, label: 'Number'),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                DefaultButton(
                                    label: 'Login',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, AppRouterNames.rVerificationRoute);
                                    },
                                    isExpanded: false,
                                    context: context),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RegularText(
                                      text: 'Don\'t have account?',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto',
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(context, AppRouterNames.rRegisterRoute);
                                        },
                                        child: RegularText(
                                          text: 'Sign up',
                                          fontSize: 16.sp,
                                          color: AppColor.teal,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                        ))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconComponent(
                                      imageName: AssetsManager.gmail,
                                      containerWidth: 50,
                                      containerHeight: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: IconComponent(
                                        imageName: AssetsManager.facebook,
                                        containerWidth: 50,
                                        containerHeight: 50,
                                      ),
                                    ),
                                    IconComponent(
                                      imageName: AssetsManager.apple,
                                      containerWidth: 50,
                                      containerHeight: 50,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Positioned(
              right: MediaQuery.of(context).size.width / 3.w,
              top: MediaQuery.of(context).size.height / 7.h,
              child: Image(image: AssetImage(AssetsManager.sadGirl)),
            )
          ],
        ));
  }
}
