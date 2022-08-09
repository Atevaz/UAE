import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/styles/colors.dart';

import '../../constants/constants.dart';
import '../router/app_router_names.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
