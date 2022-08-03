import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../styles/colors.dart';

class AddAnotherLocation extends StatelessWidget {
  const AddAnotherLocation({Key? key, this.onPress}) : super(key: key);
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        width: 350.w,
        height: 48.h,
        decoration: BoxDecoration(
            color: AppColor.containerBG,
            borderRadius: BorderRadius.circular(19)),
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: AppColor.teal,
            ),
            RegularText(
              text: 'Add another location',
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 15,
            )
          ],
        ),
      ),
    );
  }
}
