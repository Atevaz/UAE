import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/payment_item_component.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 40.w),
        PaymentItemComponent(
          image: 'https://i.ibb.co/VY2M9Kf/image.png',
          isSelected: isSelected == 0 ? true : false,
          onPressed: () {
            setState(() {
              isSelected = 0;
            });
          },
        ),
        SizedBox(width: 20.w),
        PaymentItemComponent(
          image: 'https://i.ibb.co/4WFnSvf/image.png',
          isSelected: isSelected == 1 ? true : false,
          onPressed: () {
            setState(() {
              isSelected = 1;
            });
            print('PaymentItemComponent 1 ${isSelected}');
          },
          title: 'Cash',
        ),
        SizedBox(width: 20.w),
        PaymentItemComponent(
          image: 'https://i.ibb.co/pxYM1Sy/image.png',
          onPressed: () {
            setState(() {
              isSelected = 2;
              print('PaymentItemComponent 2 ${isSelected}');
            });
          },
          isSelected: isSelected == 2 ? true : false,
          title: 'Apple Pay',
        ),
        SizedBox(width: 40.w),
      ],
    );
  }
}
