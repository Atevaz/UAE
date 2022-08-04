import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/default_phone_number_form_field.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController? nameController;
  TextEditingController? numberOneController;
  TextEditingController? numberTwoController;
  TextEditingController? emailController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.teal,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Column(
                  children: [
                    /// background circle
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image(
                                  image: AssetImage(AssetsManager.signupCircle),
                                ),
                              ],
                            )),
                            Expanded(child: Container()),
                          ],
                        )),

                    Expanded(
                        flex: 4,
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
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: DefaultFormField(
                                        controller: nameController,
                                        keyboard: TextInputType.text,
                                        hintText: 'Plz write your name',
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: DefaultPhoneNumFormField(
                                          controller: numberOneController,
                                          label: 'Number1'),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: DefaultPhoneNumFormField(
                                          controller: numberTwoController,
                                          label: 'Number2'),
                                    ),
                                    DefaultFormField(
                                      controller: emailController,
                                      keyboard: TextInputType.emailAddress,
                                      hintText: 'Plz enter your e-mail',
                                    ),
                                  ],
                                ),
                              ),

                              /// sign up button & login instead text button
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    DefaultButton(
                                        label: 'Sign Up',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        onPressed: () {},
                                        isExpanded: false,
                                        context: context),

                                    /// already have account ? Login >>>>
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RegularText(
                                          text: 'Already have account?',
                                          fontSize: 16.sp,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto',
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            child: RegularText(
                                              text: 'Log in',
                                              fontSize: 16.sp,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: AppColor.teal,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Roboto',
                                            ))
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
                  right: MediaQuery.of(context).size.width / 1.8.w,
                  top: MediaQuery.of(context).size.height / 13.h,
                  child: Image(image: AssetImage(AssetsManager.sadGirlSignUp)),
                )
              ],
            ),
          ),
        ));
  }
}
