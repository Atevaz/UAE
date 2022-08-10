import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController? controller;
  String? label;
  String? hintText;
  final TextInputType? keyboard;
  Icon? prefixIcon;
  Icon? suffixIcon;
  VoidCallback? suffixPressed;
  TextStyle? labelStyle;
  TextStyle? hintStyle;
  TextStyle? formFieldStyle;
  TextStyle? errorStyle;
  Color? cursorColor;
  Color? fillColor;
  Color? focusedBorderColor;
  Color? borderColor;
  Color? errorBorderColor;
  String? validateText;
  Function(String)? onChanged;
  VoidCallback? onSubmitted;
  bool? isPassword;
  bool? noInput;
  TextDirection? textDirection;
  GlobalKey<FormState>? formKey = GlobalKey<FormState>();

  DefaultFormField({
    required this.controller,
    this.label,
    this.hintText,
    required this.keyboard,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    this.labelStyle,
    this.hintStyle,
    this.formFieldStyle,
    this.errorStyle,
    this.cursorColor,
    this.fillColor,
    this.focusedBorderColor,
    this.borderColor,
    this.errorBorderColor,
    this.validateText,
    this.onChanged,
    this.onSubmitted,
    this.isPassword,
    this.noInput,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        height: 60.h,
        width: 350.w,
        child: TextFormField(
          textDirection: textDirection,
          style: formFieldStyle ?? TextStyle(color: Colors.black),
          cursorColor: cursorColor ?? Colors.black,
          onChanged: onChanged,
          onFieldSubmitted: (value) {
            if (formKey!.currentState!.validate()) {
              return onSubmitted ?? print('no Submitted Function');
            }
          },
          readOnly: noInput ?? false,
          validator: (String? value) {
            if (value!.isEmpty) {
              return validateText;
            }
            return null;
          },
          controller: controller,
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.all(15.r),
            filled: true,
            fillColor: fillColor ?? Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusedBorderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(19.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(19.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: errorBorderColor ?? Colors.red),
              borderRadius: BorderRadius.circular(19.r),
            ),
            errorStyle: errorStyle,
            labelText: label,
            labelStyle: labelStyle ??
                TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
            prefixStyle: TextStyle(color: Colors.black),
            prefixIcon: prefixIcon,
            suffixIcon: IconButton(
              icon: suffixIcon ?? SizedBox(),
              onPressed: suffixPressed,
            ),
            hintText: hintText,
            hintStyle: hintStyle ??
                TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
          ),
          keyboardType: keyboard,
          obscureText: isPassword ?? false,
        ),
      ),
    );
  }
}
