import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class DefaultFormField extends StatefulWidget {
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
  State<DefaultFormField> createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  GlobalKey<FormState>? formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        height: 60.h,
        width: 350.w,
        child: TextFormField(
          textDirection: widget.textDirection,
          style: widget.formFieldStyle ?? TextStyle(color: Colors.black),
          cursorColor: widget.cursorColor ?? Colors.black,
          onChanged: widget.onChanged,
          onFieldSubmitted: (value) {
            if (formKey!.currentState!.validate()) {
              return widget.onSubmitted ?? print('no Submitted Function');
            }
          },
          readOnly: widget.noInput ?? false,
          validator: (String? value) {
            if (value!.isEmpty) {
              return widget.validateText;
            }
            return null;
          },
          controller: widget.controller,
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.all(15.r),
            filled: true,
            fillColor: widget.fillColor ?? Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.focusedBorderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(19.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(19.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.errorBorderColor ?? Colors.red),
              borderRadius: BorderRadius.circular(19.r),
            ),
            errorStyle: widget.errorStyle,
            labelText: widget.label,
            labelStyle: widget.labelStyle ??
                TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
            prefixStyle: TextStyle(color: Colors.black),
            prefixIcon: widget.prefixIcon,
            suffixIcon: IconButton(
              icon: widget.suffixIcon ?? SizedBox(),
              onPressed: widget.suffixPressed,
            ),
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
          ),
          keyboardType: widget.keyboard,
          obscureText: widget.isPassword ?? false,
        ),
      ),
    );
  }
}
