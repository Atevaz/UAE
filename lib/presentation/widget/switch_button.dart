import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:h_m/presentation/styles/colors.dart';

class SwitchButton extends StatefulWidget {
  final String text;
  const SwitchButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Icon(Icons.check,
              color: _isSelected ? AppColor.green : AppColor.grey, size: 30.w),
          SizedBox(width: 10.w),
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.black,
            ),
          ),
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.r),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF0000000).withOpacity(0.15),
                  blurRadius: 5,
                  offset: Offset(0, 5.h),
                ),
              ],
            ),
            child: CupertinoSwitch(
              value: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
              activeColor: AppColor.teal,
              thumbColor: _isSelected ? AppColor.white : AppColor.teal,
              trackColor: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
