import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/carousel_view.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';
import 'package:page_transition/page_transition.dart';

class Component extends StatefulWidget {
  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  bool e = false;
  bool a = false;
  bool u = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        e = true;
      });
    });
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        a = true;
      });
    });
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        u = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,

      /// Next Screen
      nextScreen: CarouselView(),

      splashIconSize: 400,
      duration: 5000,
      animationDuration: const Duration(seconds: 2),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      splash: Column(
        children: [
          /// logo
          Expanded(
              child: Image.asset(
            AssetsManager.splashLogo,
          )),

          /// animated text UAE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// U
                Expanded(
                  child: AnimatedAlign(
                    curve: Curves.easeInOut,
                    alignment: u ? Alignment.center : Alignment.centerLeft,
                    child: u
                        ? HeadLineText(
                            text: 'U',
                            fontSize: 80,
                            fontFamily: 'Italianno',
                            fontWeight: FontWeight.bold,
                            color: AppColor.teal,
                          )
                        : Container(
                            height: 100,
                          ),
                    duration: Duration(milliseconds: 500),
                  ),
                ),

                /// A
                Expanded(
                  child: AnimatedAlign(
                    curve: Curves.easeInOut,
                    alignment: a ? Alignment.center : Alignment.centerLeft,
                    child: a
                        ? HeadLineText(
                            text: 'A',
                            fontSize: 80,
                            fontFamily: 'Italianno',
                            fontWeight: FontWeight.bold,
                            color: AppColor.teal,
                          )
                        : Container(
                            height: 100,
                          ),
                    duration: Duration(milliseconds: 500),
                  ),
                ),

                /// E
                Expanded(
                  child: AnimatedAlign(
                    curve: Curves.easeInOut,
                    alignment: e ? Alignment.center : Alignment.centerLeft,
                    child: e
                        ? HeadLineText(
                            text: 'E',
                            fontSize: 80,
                            color: AppColor.teal,
                            fontFamily: 'Italianno',
                            fontWeight: FontWeight.bold,
                          )
                        : Container(
                            height: 100,
                          ),
                    duration: Duration(milliseconds: 500),
                  ),
                ),
              ],
            ),
          ),

          /// store text
          RegularText(
            text: 'Store',
            fontFamily: 'Italianno',
            fontSize: 50.sp,
            color: AppColor.teal,
          ),
        ],
      ),
    );
  }
}
