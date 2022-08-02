import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

Widget defaultPhoneNumFormField({
  required GlobalKey<FormState>? formKey,
  required TextEditingController controller,
})=>Form(
  key: formKey,
  child: SizedBox(
    height: 60.h,
    width: 350.w,
    child: InternationalPhoneNumberInput(

      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
      textStyle: TextStyle(

        fontSize: 18,
      ),
      selectorConfig: SelectorConfig(
        setSelectorButtonAsPrefixIcon: true,
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        leadingPadding: 10,
        trailingSpace: false,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: TextStyle(color: Colors.black,fontSize: 18,),
      initialValue: PhoneNumber(isoCode: 'EG'),
      textFieldController: controller,
      formatInput: false,
      inputDecoration: InputDecoration(
        isDense: true,
        hintText: '00000',
        label: Text(
          'Number',
        ),
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(19),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(19),
        ),
      ),
      keyboardType:
      TextInputType.numberWithOptions(signed: true, decimal: true),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
    ),
  ),
);