import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/assets_manager.dart';
import '../../styles/colors.dart';
import '../../view/filter_bottom_sheet.dart';
import '../../widget/brand_componant.dart';
import '../../widget/default_form_field.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final List<Widget> brandList = [
    BrandComponent(
      image: AssetsManager.brand1,
    ),
    BrandComponent(
      image: AssetsManager.brand2,
    ),
    BrandComponent(
      image: AssetsManager.brand3,
    ),
    BrandComponent(
      image: AssetsManager.brand4,
    ),
    BrandComponent(
      image: AssetsManager.brand5,
    ),
    BrandComponent(
      image: AssetsManager.brand6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100.r, left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// search bar - camera and filter
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
                  Expanded(flex: 2, child: FilterBottomSheet()),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            /// Similar product
            Text(
              'Similar Product',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
            Container(
              height: 150.h,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),

                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: brandList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: brandList[index],
                    );
                  }),
            ),

            /// recent search
            Text(
              'Recent search',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.access_time_rounded,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'vegetables',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'cucumber, tomato, lettuce.',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: AppColor.black.withOpacity(.46)),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 1,
                      color: AppColor.black.withOpacity(.1),
                    );
                  },
                  itemCount: 15),
            )
          ],
        ),
      ),
    );
  }
}
