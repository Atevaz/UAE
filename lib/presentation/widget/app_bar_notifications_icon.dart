import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

class NotificationIcon extends StatelessWidget {
  bool? thereNewNotification;
  NotificationIcon({Key? key,required this.thereNewNotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 20.r),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          IconButton(
            padding: EdgeInsets.zero.r,
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active,
              color: AppColor.teal,
              size: 33.r,

            ),
            iconSize: 25.r,
            alignment: AlignmentDirectional.topEnd,
          ),
          if(thereNewNotification!)
          Container(
            height: 8.56.h,
            width: 8.91.w,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColor.red,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
