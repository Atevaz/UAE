import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import 'headline_text.dart';
import 'medium_text.dart';

Widget BallanceDetailsComponent({
  required String imageName,
  required String notificationBoldTxt,
  required String notificationLightTxt,
  required String timeTxt,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Container(
                /// leading image
                /// [ gift , charge , refund ]
                child: Image(
                  image: AssetImage(
                    imageName,
                  ),
                ),
              ),

              /// bold text
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: HeadLineText(
                  text: notificationBoldTxt,
                  fontSize: 20.sp,
                ),
              ),

              /// light text
              MediumText(text: notificationLightTxt),
              Spacer()
            ],
          ),
        ),

        /// time text
        RegularText(text: timeTxt),
      ],
    );
