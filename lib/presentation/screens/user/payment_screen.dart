import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/payment_options.dart';
import 'package:h_m/presentation/view/successful_payment.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/payment_text_field.dart';
import 'package:h_m/presentation/widget/switch_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
              leadingIcon: Icons.arrow_back_ios,
              leadingIconOnPressed: (){
                Navigator.pop(context);
              },
              centerWidget: HeadLineText(
                text: 'Payment',
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                PaymentOptions(),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  width: 350.w,
                  height: 60.h,
                  child: CreditCardTextField(),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 165.w, child: DateTextField()),
                    SizedBox(width: 165.w, child: CvvNumberTextField()),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                SwitchButton.withoutIcon(
                  text: 'Save card data for future payment',
                  textColor: AppColor.teal,
                  textSize: 16,
                ),
                SizedBox(
                  height: 100.h
                ),
                DefaultButton(
                    label: 'Pay',
                    onPressed: () {
                      ShowSuccessfulPaymentDialog(context);
                    },
                    isExpanded: false,
                    fontWeight: FontWeight.normal,
                    context: context)
              ],
            ),
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
        // FIXME: rotate the image to fit the design
        Positioned(
          child: Transform(
              transform: Matrix4.identity()..rotateY(0.2),
              child: Image.asset(
                AssetsManager.sidePicBottom,
              )),
          left: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
