import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

Widget defaultFormField({
  required context,
  required GlobalKey<FormState>? formKey,
  required TextEditingController controller,
  required String label,
  required TextInputType keyboard,
  IconData? prefixIcon,
  String? hintText,
  TextStyle? labelStyle,
  TextStyle? formFieldStyle,
  TextStyle? hintStyle,
  TextStyle? errorStyle,
  Color? cursorColor,
  Color? fillColor,
  Color? focusedBorderColor,
  Color? BorderColor,
  Color? errorBorderColor,
  IconData? suffixIcon,
  VoidCallback? suffixPressed,
  FormFieldValidator<String>? validate,
  ValueChanged<String>? onChanged,
  ValueChanged<String>? onSubmitted,
  bool isPassword = false,
  bool noInput = false,
  TextDirection? textDirection,
}) =>
    Form(
      key: formKey,
      child: SizedBox(
        height: 60.h,
        width: 350.w,
        child: TextFormField(
          textDirection: textDirection,
          style: formFieldStyle ?? TextStyle(color: Colors.black),
          cursorColor: cursorColor ?? Colors.black,
          onChanged: onChanged,
          onFieldSubmitted: onSubmitted,
          readOnly: noInput,
          validator: validate,
          controller: controller,
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: fillColor ?? Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusedBorderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(19),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: BorderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(19),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: errorBorderColor ?? Colors.red),
              borderRadius: BorderRadius.circular(19),
            ),
            errorStyle: errorStyle,
            labelText: label,
            labelStyle: labelStyle ??
                TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
            prefixStyle: TextStyle(color: Colors.black),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.black,
            ),

            suffixIcon: IconButton(
              icon: Icon(
                suffixIcon,
                color: Colors.black,
              ),
              onPressed: suffixPressed,
            ),
            hintText: hintText,
            hintStyle: hintStyle ??
                TextStyle(
                  color: Colors.grey,
                ),
          ),
          keyboardType: keyboard,
          obscureText: isPassword,
        ),
      ),
    );
