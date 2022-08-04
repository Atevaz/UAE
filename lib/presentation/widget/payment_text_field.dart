import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditCardTextField extends StatefulWidget {
  const CreditCardTextField({Key? key}) : super(key: key);

  @override
  State<CreditCardTextField> createState() => _CreditCardTextFieldState();
}

class _CreditCardTextFieldState extends State<CreditCardTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(16),
        CardNumberFormatter(),
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 18.h),
          child: Image.network(
            'https://i.ibb.co/BrR5S8y/image.png',
          ),
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        hintText: '**** **** **** ****',
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.black.withOpacity(0.4),
        ),
        labelText: 'Card Number',
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = new StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: new TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

class DateTextField extends StatefulWidget {
  const DateTextField({Key? key}) : super(key: key);

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(5),
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        hintText: 'MM/YY',
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.black.withOpacity(0.4),
        ),
        labelText: 'Expire date',
      ),
    );
  }
}

class CvvNumberTextField extends StatefulWidget {
  const CvvNumberTextField({Key? key}) : super(key: key);

  @override
  State<CvvNumberTextField> createState() => _CvvNumberTextFieldState();
}

class _CvvNumberTextFieldState extends State<CvvNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(3),
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        hintText: '123',
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.black.withOpacity(0.4),
        ),
        labelText: 'CVV',
      ),
    );
  }
}
