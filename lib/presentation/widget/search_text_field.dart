import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      // TODO: push into a search sceen
      onTap: () => print('tapped'),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.fillTextField,
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        suffixIcon: Icon(Icons.camera_alt_outlined),
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
