import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/styles/colors.dart';

import '../../constants/constants.dart';
import '../router/app_router_names.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({Key? key , required this.index}) : super(key: key);
  final int index ;

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState(index: this.index);
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  _BottomNavBarViewState({required this.index});
  final int index ;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
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
        BottomNavigationBarItem(icon: InkWell(
            onTap: (){
              Navigator.pushNamed(context, AppRouterNames.rHomeRoute);
            },
            child: Icon(Icons.home_rounded)), label: 'Home'),
        BottomNavigationBarItem(icon: InkWell(
            onTap: (){
              Navigator.pushNamed(context, AppRouterNames.rFavoriteRoute);
            },
            child: Icon(Icons.favorite)), label: 'Fav'),
        BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouterNames.rCartRoute);
                },
                child: Icon(Icons.shopping_cart_outlined)),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AppRouterNames.rOfferRoute);
                },
                child: Icon(Icons.local_offer_rounded)), label: 'Offers'),
        BottomNavigationBarItem(icon: InkWell(
            onTap: (){
              Navigator.pushNamed(context, AppRouterNames.rMoreRoute);
            },
            child: Icon(Icons.more_horiz)), label: 'More'),
      ],
    );
  }
}
