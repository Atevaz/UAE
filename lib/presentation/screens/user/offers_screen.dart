import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../../view/buttom_nav_bar_view.dart';
import '../../view/carousel_view.dart';
import '../../view/filter_bottom_sheet.dart';
import '../../view/offer_product_banner_builder.dart';
import '../../widget/offer_product_banner.dart';
import '../../view/popular_banner.dart';
import '../../widget/app_bar_notifications_icon.dart';
import '../../widget/default_form_field.dart';
import '../../widget/filtter_button.dart';

class OffersScreen extends StatelessWidget {

  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 43.h,
                child: Row(
                  children: [
                    Expanded(
                        child: DefaultFormField(
                      controller: TextEditingController(),
                      keyboard: TextInputType.text,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColor.black,
                      ),
                      noInput: true,
                      onTap: (){
                        Navigator.pushNamed(context, AppRouterNames.rSearchRoute);
                      },
                      suffixIcon: Icon(
                        Icons.photo_camera_outlined,
                        color: AppColor.black,
                      ),
                      borderColor: AppColor.white,
                      focusedBorderColor: AppColor.white,
                      hintText: 'Search',
                      fillColor: AppColor.offWhite,
                    )),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.r),
                      child: FilterBottomSheet(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.r),
                child: CarouselView(),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: RegularText(
                  text: 'All Offers',
                  color: AppColor.black,
                  fontSize: 16.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: OfferProductBannerBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
