import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/headline_text.dart';
import '../../widget/payemnt_method_component.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerWidget: HeadLineText(
          text: 'Wallet',
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
          fontFamily: 'Roboto',
        ),
        leadingIcon: Icons.arrow_back_ios,

        /// routing
        leadingIconOnPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(AssetsManager.creditCard)),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: HeadLineText(
                text: 'Payment methods',
                fontFamily: 'Roboto',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            PaymentMethodComponent(
              text: 'Cash',

              /// routing
              onPressed: () {},
              isIcon: true,
            ),
            PaymentMethodComponent(
              text: 'Balance details',

              /// routing
              onPressed: () {},
              isIcon: true,
            ),
            PaymentMethodComponent(
              text: 'Credit',

              /// routing
              onPressed: () {},
              isIcon: true,
            ),
          ],
        ),
      ),
    );
  }
}
