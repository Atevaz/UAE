import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      child: Icon(Icons.close),
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
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return Container(
          height: 700.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.w),
              topRight: Radius.circular(20.w),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RegularText(
                text: 'Filter',
                fontSize: 16.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              SearchTextField(),
              SizedBox(height: 15.h),
              Container(
                width: double.infinity,
                child: MediumText(
                  text: 'All Category',
                  fontSize: 16.sp,
                  color: Colors.black,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
