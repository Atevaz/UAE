import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

//FIXME:category_chip: align the image to the bottom of the container
class CategoryChip extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String imgUrl;
  const CategoryChip({
    Key? key,
    required this.text,
    required this.onTap,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 10.w, top: 12.h, right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColor.fillTextField,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 2.h),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.network(
              imgUrl,
              width: 80.w,
            ),
          ),
        ],
      ),
    );
  }
}
