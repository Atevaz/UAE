import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/constants.dart';
import 'package:h_m/presentation/screens/user/home_screen.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

import '../../../constants/assets_manager.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Scaffold(
          appBar: appBars(context),
          body: Screens[currentPageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPageIndex,
            onTap: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            showUnselectedLabels: true,
            unselectedItemColor: AppColor.grey,
            selectedItemColor: AppColor.teal,
            backgroundColor: AppColor.white,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedFontSize: 16.sp,
            unselectedFontSize: 16.sp,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.local_offer_rounded), label: 'Offers'),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
            ],
          ),
        ),
        if(currentPageIndex == 0)
          Positioned(child: Image.asset(AssetsManager.sidePic2), left: 0),
        if(currentPageIndex == 1)
          Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
        if(currentPageIndex == 2)
          Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
      ],
    );
  }
}
