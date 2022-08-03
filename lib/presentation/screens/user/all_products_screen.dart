import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/constants.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/view/popular_banner.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

import '../../styles/colors.dart';
import '../../widget/default_form_field.dart';
import '../../widget/filtter_button.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios,
        leadingIconOnPressed: () {},
        trailingIcon: Icons.notifications_active_sharp,
        trailingIconOnPressed: () {},
        centerWidget: HeadLineText(text: 'Fruits'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(18.0.r),
          child: Column(
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
                          fillColor: AppColor.offWhite,
                        )),
                    Spacer(),
                    Expanded(flex: 2, child: FilterButton()),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                height: 55.h,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => itemName(title:itemNames[index]),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10.w,
                        ),
                    itemCount: 6),
              ),
              SizedBox(height: 10.h,),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 168.w / 235.h,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 14.w,
                ),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return PopularBanner();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarView(),
    );
  }

  Widget itemName({required String title}) => Container(
        width: 158.w,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColor.white,
          border: Border.all(
            color: AppColor.teal,
            width: .5.w,
          ),
        ),
        child: Center(
          child: HeadLineText(
            text: title,
            fontSize: 20.sp,
            color: AppColor.black,
          ),
        ),
      );
}
