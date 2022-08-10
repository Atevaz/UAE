import 'package:flutter/material.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/widget/more_header.dart';

import '../../styles/colors.dart';
import '../../widget/balance_item.dart';
import '../../widget/divider.dart';
import '../../widget/list_tile.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              MoreHeader(
                imagePath: "assets/images/brand1.png",
                  name: "Ahmad Mohamed",
                  phone: "01101001011",
                  editOnPress: () {
                  Navigator.pushNamed(context, AppRouterNames.rEditProfileRoute);
                  }),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, AppRouterNames.rPaymentMethodRoute);
                    },
                    child: BalanceItem(
                        iconPath: "assets/icons/wallet.png",
                        title: "Wallet",
                        numOfCoin: "500 LE",),
                  ),
                  const Spacer(),
                  BalanceItem(
                      iconPath: "assets/icons/point.png",
                      title: "Points",
                      numOfCoin: "350"),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ListTileItem(
                onPress: (){
                  // todo navigate to settings screen
                },
                iconPath: "assets/icons/setting.png",
                title: "Settings",
              ),
              DividerWidget(
                height: 2,
                thickness: 1.5,
              ),
              ListTileItem(
                onPress: (){
                  Navigator.pushNamed(context, AppRouterNames.rPaymentRoute);
                },
                iconPath: "assets/icons/payment.png",
                title: "Payment",
              ),
              DividerWidget(
                height: 2,
                thickness: 1.5,
              ),
              ListTileItem(
                onPress: (){
                  Navigator.pushNamed(context, AppRouterNames.rCustomerServicesRoute);
                },
                iconPath: "assets/icons/customer.png",
                title: "Customer service",
              ),
              DividerWidget(
                height: 2,
                thickness: 1.5,
              ),
              ListTileItem(
                onPress: (){},
                iconPath: "assets/icons/share.png",
                title: "Share",
              ),
              DividerWidget(
                height: 2,
                thickness: 1.5,
              ),
              ListTileItem(
                onPress: (){
                  Navigator.pushNamed(context, AppRouterNames.rCustomerServicesRoute);
                },
                iconPath: "assets/icons/about.png",
                title: "About",
              ),
              DividerWidget(
                height: 2,
                thickness: 1.5,
              ),
              ListTileItem(
                onPress: (){},
                iconPath: "assets/icons/logout.png",
                iconColor: AppColor.red,
                title: "Log Out",
                textColor: AppColor.red,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
