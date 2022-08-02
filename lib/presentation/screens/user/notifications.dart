import 'package:flutter/material.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/view/notification_item.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/regular_text.dart';


class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        centerWidget: RegularText(
          text: 'Notification',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: 'Roboto',
          color: AppColor.black,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => NotificationItem(),
        itemCount: 5,
      ),
      bottomNavigationBar: BottomNavBarView(),
    );
  }
}
