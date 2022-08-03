import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

import '../../widget/app_bar_notifications_icon.dart';
import '../../widget/default_form_field.dart';
import '../../widget/filtter_button.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          centerWidget: HeadLineText(text: 'Offers'),
          leadingIcon: Icons.arrow_back_ios,
          leadingIconOnPressed: () {},
          trailingWidget: NotificationIcon(thereNewNotification: true,),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: Container(
          height: 43.h,
          child: Row(
            children: [
              Expanded(
                  child: DefaultFormField(
                    controller: TextEditingController(),
                    keyboard: TextInputType.text,
                    prefixIcon: Icon(Icons.search,color: AppColor.black,),
                    suffixIcon: Icon(Icons.photo_camera_outlined,color: AppColor.black,),
                    borderColor: AppColor.white,
                    focusedBorderColor: AppColor.white,
                    hintText: 'Search',
                    fillColor: AppColor.offWhite,
                  )),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 10.r),
                child: FilterButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
