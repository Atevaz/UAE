import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../../../constants/assets_manager.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            centerWidget: HeadLineText(
              text: 'About Us',
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              fontFamily: 'Roboto',
            ),
            leadingIcon: Icons.arrow_back_ios,

            /// routing
            leadingIconOnPressed: () {},
          ),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image(
                  image: AssetImage(AssetsManager.orangeGirl),
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        FirstParagraph(context),
                        SecondParagraph(context),
                        SizedBox(
                          height: 10,
                        ),
                        FirstParagraph(context),
                        SecondParagraph(context),
                        SizedBox(
                          height: 10,
                        ),
                        FirstParagraph(context),
                        SecondParagraph(context),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
      ],
    );
  }
}

Widget FirstParagraph(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width - 50.w,
      child: RegularText(
        text:
            'This text has no significance. We only use it to improve the user experience',
        color: AppColor.black.withOpacity(.7),
        maxLines: 2,
        textAlign: TextAlign.center,
        fontSize: 20.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    );
Widget SecondParagraph(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width - 100.w,
      child: RegularText(
        text:
            'This text has no significance. We only use it to improve the user experience',
        textAlign: TextAlign.center,
        color: AppColor.black.withOpacity(.7),
        maxLines: 3,
        fontSize: 20.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    );
