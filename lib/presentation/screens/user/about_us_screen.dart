import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

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
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
      ],
    );
  }
}
