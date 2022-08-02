import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        showUnselectedLabels: true,
        unselectedItemColor: AppColor.grey,
        selectedItemColor: AppColor.teal,
        backgroundColor: AppColor.white,
        elevation: 0,
        selectedFontSize: 16.sp,
        unselectedFontSize: 16.sp,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label:'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label:'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer_rounded),label:'Offers'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label:'More'),
        ],
      ),
    );
  }
}
