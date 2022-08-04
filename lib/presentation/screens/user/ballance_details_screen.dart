import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/ballance_details.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

class BalanceDetailsScreen extends StatelessWidget {
  const BalanceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerWidget: HeadLineText(
          text: 'Balance details',
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
          fontFamily: 'Roboto',
        ),
        leadingIcon: Icons.arrow_back_ios,

        /// routing
        leadingIconOnPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            BalanceDetailsComponent(
                timeTxt: '11:30 AM',
                imageName: AssetsManager.refund,
                notificationBoldTxt: '20 LE',
                notificationLightTxt: 'Cashback'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(height: 1, color: AppColor.teal),
            ),
            BalanceDetailsComponent(
                timeTxt: 'Yesterday',
                imageName: AssetsManager.charge,
                notificationBoldTxt: '150 LE',
                notificationLightTxt: 'Charged'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(height: 1, color: AppColor.teal),
            ),
            BalanceDetailsComponent(
                timeTxt: '3 days ago',
                imageName: AssetsManager.gift,
                notificationBoldTxt: 'Adha Eidia!',
                notificationLightTxt: 'You got 10 LE'),
          ],
        ),
      ),
    );
  }
}
