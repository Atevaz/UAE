import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/payemnt_method_component.dart';

import '../../../constants/assets_manager.dart';

class CustomerService extends StatelessWidget {
  const CustomerService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            centerWidget: HeadLineText(
              text: 'Customer Service',
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              fontFamily: 'Roboto',
            ),
            leadingIcon: Icons.arrow_back_ios,

            /// routing
            leadingIconOnPressed: () {
              Navigator.pop(context);
            },
          ),
          body: Column(
            children: [
              PaymentMethodComponent(
                text: 'Contact Us',

                /// routing
                onPressed: () {
                  Navigator.pushNamed(context, AppRouterNames.rContactUsRoute);
                },
                isIcon: true,
              ),
              PaymentMethodComponent(
                text: 'About us',

                /// routing
                onPressed: () {
                  Navigator.pushNamed(context, AppRouterNames.rAboutUsRoute);

                },
                isIcon: true,
              ),
              PaymentMethodComponent(
                text: 'FAQ',
                onPressed: () {
                  Navigator.pushNamed(context, AppRouterNames.rFAQRoute);
                },
                isIcon: true,
              ),
            ],
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
        Positioned(
          child: Image.asset(AssetsManager.sidePicBottom),
          left: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
