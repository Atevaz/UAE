import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget otp({
  required context,
  required TextEditingController? controller1,
  required TextEditingController? controller2,
  required TextEditingController? controller3,
  required TextEditingController? controller4,
}) {
  return SizedBox(
    height: 56.h,
    width: 270.w,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        otpField(
          context: context,
          controller: controller1,
          first: true,
          last: false,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 10,end: 5),
          child: otpField(
            context: context,
            controller: controller2,
            first: false,
            last: false,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 5,end: 10),
          child: otpField(
            context: context,
            controller: controller3,
            first: false,
            last: false,
          ),
        ),
        otpField(
          context: context,
          controller: controller4,
          first: false,
          last: true,
        ),

      ],
    ),
  );
}

Widget otpField({
  required context,
  required TextEditingController? controller,
  required bool first,
  required bool last,
}) =>
    Container(
      height: 60.h,
      width: 56.w,
      child: TextField(
        controller: controller,
        autofocus: true,
        onChanged: (value) {
          if(value.length == 1 &&last == true){
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
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
