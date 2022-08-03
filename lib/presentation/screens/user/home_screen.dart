import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/view/carousel_view.dart';
import 'package:h_m/presentation/view/popular_banner.dart';
import 'package:h_m/presentation/widget/brand_componant.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/filtter_button.dart';
import 'package:h_m/presentation/widget/main_category.dart';
import 'package:h_m/presentation/widget/medium_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../../../constants/assets_manager.dart';
import '../../widget/default_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Scaffold(
          appBar: CustomAppBar(
            centerWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MediumText(text: 'Location'),
                Icon(Icons.arrow_drop_down_rounded,color: AppColor.black,),
              ],
            ),
            trailingWidget: Icon(Icons.notifications_active_sharp,),
          ),
          body:  SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(18.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 43.h,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 15,
                            child: DefaultFormField(
                              controller: TextEditingController(),
                              keyboard: TextInputType.text,
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.photo_camera_outlined),
                              borderColor: AppColor.white,
                              focusedBorderColor: AppColor.white,
                              hintText: 'Search',
                              fillColor: AppColor.containerBG,
                            )),
                        Spacer(),
                        Expanded(flex: 2, child: FilterButton()),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  MediumText(
                    text: 'All Category',
                    fontSize: 16.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: mainCategory(
                              categoryText: 'Fruits',
                              imageName: 'assets/images/fruit.png')),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                          child: mainCategory(
                              categoryText: 'Beans',
                              imageName: 'assets/images/beans.png')),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                          child: mainCategory(
                              categoryText: 'Drinks',
                              imageName: 'assets/images/drinks.png')),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: mainCategory(
                              categoryText: 'Vegetables',
                              imageName: 'assets/images/vegetables.png')),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                          child: mainCategory(
                              categoryText: 'Clothes',
                              imageName: 'assets/images/clothes.png')),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CarouselView(),
                  Row(
                    children: [
                      MediumText(
                        text: 'Popular',
                        fontSize: 16.sp,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              RegularText(
                                  text: 'See all',
                                  color: AppColor.teal,
                                  fontSize: 14.sp),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColor.teal,
                                size: 16.sp,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 240.h,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => PopularBanner(isOffer: true),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 5.w,
                      ),
                      itemCount: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      MediumText(
                        text: 'Popular Brands',
                        fontSize: 16.sp,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              RegularText(
                                  text: 'See all',
                                  color: AppColor.teal,
                                  fontSize: 14.sp),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColor.teal,
                                size: 16.sp,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 100.h,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => BrandComponent(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 5.w,
                      ),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavBarView(),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePic2), left: 0),
      ],
    );
  }
}
