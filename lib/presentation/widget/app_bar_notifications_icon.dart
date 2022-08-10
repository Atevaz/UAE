import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/router/app_router_names.dart';

import '../styles/colors.dart';

class NotificationIcon extends StatelessWidget {
  bool? thereNewNotification;
  NotificationIcon({Key? key,required this.thereNewNotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 20.r),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, AppRouterNames.rNotificationRoute);
        },
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Icon(
                Icons.notifications_active,
                color: AppColor.teal,
                size: 33.r,
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
      ),
    );
  }
}
