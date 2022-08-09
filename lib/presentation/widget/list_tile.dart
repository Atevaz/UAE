import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/icon.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class ListTileItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Color iconColor;
  final Color textColor;
  final Function() onPress;

  ListTileItem({required this.iconPath, required this.title, this.iconColor = AppColor.teal, this.textColor = AppColor.black, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onPress,
      contentPadding: EdgeInsetsDirectional.zero,
      leading: IconComponent(
          imageName: iconPath,
          containerWidth: 20.0,
          color: iconColor,
      ),
      minLeadingWidth: 10.0,
      title: RegularText(
        text: title,
        fontSize: 20.sp,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400,
        color: textColor,
      ),
    );
  }
}
