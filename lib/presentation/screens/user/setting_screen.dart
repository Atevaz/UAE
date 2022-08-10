import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/setting_language_expansion_tile.dart';

import '../../../constants/assets_manager.dart';
import '../../widget/setting_switch_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            centerWidget: HeadLineText(
              text: 'Setting',
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              fontFamily: 'Roboto',
            ),
            leadingIcon: Icons.arrow_back_ios,

            /// routing
            leadingIconOnPressed: () {
              Navigator.pop(context);
            },
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                /// notification Switch button
                Row(
                  children: [
                    Icon(
                      Icons.notifications_active_sharp,
                      color: AppColor.teal,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Notification',
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                    Expanded(
                      child: SettingSwitchButton(),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Divider(),
                ),

                /// notification Switch button
                Row(
                  children: [
                    Icon(
                      Icons.dark_mode_rounded,
                      color: AppColor.teal,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Dark Mode',
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                    Expanded(
                      child: SettingSwitchButton(),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Divider(),
                ),

                /// SettingLanguageExpansionTile
                SettingLanguageExpansionTile()
              ],
            ),
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
        Positioned(
          child: Image.asset(AssetsManager.sidePicBottom),
          left: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
