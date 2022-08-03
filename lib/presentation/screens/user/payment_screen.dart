import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
              leadingIcon: Icons.arrow_back_ios,
              centerWidget: HeadLineText(
                text: 'Payment',
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              )),
          body: Column(
            children: [
              SizedBox(height: 65.h,),
              
            ],
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePic), right: 0),
        // FIXME: rotate the image to fit the design
        Positioned(
          child: Transform(
              transform: Matrix4.identity()..rotateY(0.2),
              child: Image.asset(
                AssetsManager.sidePic,
              )),
          left: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
