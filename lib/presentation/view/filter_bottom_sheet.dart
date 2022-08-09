import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

import 'package:h_m/presentation/widget/category_chip.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/dropdown_component.dart';
import 'package:h_m/presentation/widget/main_category.dart';
import 'package:h_m/presentation/widget/medium_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';
import 'package:h_m/presentation/widget/search_text_field.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
        height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColor.teal
          ),
          child: Center(child: Icon(Icons.add_road,color: AppColor.white,))),
      onTap: () async {
        await filterBottomSheet(context);
      },
    );
  }

  Future<void> filterBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return Container(
          height: 600.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.w),
              topRight: Radius.circular(20.w),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              RegularText(
                text: 'Filter',
                fontSize: 16.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              SearchTextField(),
              SizedBox(height: 15.h),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: MediumText(
                          text: 'All Category',
                          fontSize: 16.sp,
                          color: Colors.black,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          spacing: 8.w,
                          runSpacing: 20.h,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runAlignment: WrapAlignment.start,
                          children: [
                            CategoryChip(
                              text: 'Fruit',
                              onTap: () {},
                              imgUrl: 'https://i.ibb.co/8xmk5Px/image.png',
                            ),
                            CategoryChip(
                              text: 'Fruit',
                              onTap: () {},
                              imgUrl: 'https://i.ibb.co/DzDmrLt/image.png',
                            ),
                            CategoryChip(
                              text: 'Fruit',
                              onTap: () {},
                              imgUrl: 'https://i.ibb.co/DzDmrLt/image.png',
                            ),
                            CategoryChip(
                              text: 'Fruit',
                              onTap: () {},
                              imgUrl: 'https://i.ibb.co/8xmk5Px/image.png',
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: double.infinity,
                        child: MediumText(
                          text: 'Popular Companies',
                          fontSize: 16.sp,
                          color: Colors.black,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      DropDownComponent(),
                      SizedBox(height: 15.h),
                      Container(
                        width: double.infinity,
                        child: MediumText(
                          text: 'Branch',
                          fontSize: 16.sp,
                          color: Colors.black,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      DropDownComponent(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              DefaultButton(
                  label: 'Apply Filter',
                  onPressed: () {},
                  fontSize: 22.sp,
                  context: context,
                  isExpanded: false),
            ],
          ),
        );
      },
    );
  }
}
