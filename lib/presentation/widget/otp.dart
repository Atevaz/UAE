import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatelessWidget {
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;

  Otp({
    required this.controller1,
    required this.controller2,
    required this.controller3,
    required this.controller4,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 270.w,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OtpField(
            controller: controller1,
            first: true,
            last: false,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.r, end: 5.r),
            child: OtpField(
                controller: controller2,
              first: false,
              last: false,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 5.r, end: 10.r),
            child: OtpField(
                controller: controller3,
              first: false,
              last: false,
            ),
          ),
          OtpField(
            controller: controller4,
            first: false,
            last: true,
          ),
        ],
      ),
    );
  }
}

class OtpField extends StatelessWidget {
  final TextEditingController controller;
  final bool first;
  final bool last;

  OtpField({
    required this.controller,
    required this.first,
    required this.last,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 56.w,
      child: TextField(
        controller: controller,
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == true) {
            FocusScope.of(context).requestFocus(new FocusNode());
          }
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: true,
        cursorColor: Colors.black,
        readOnly: false,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.r),
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8.r)),
        ),
      ),
    );
  }
}
