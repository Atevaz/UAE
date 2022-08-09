import 'package:flutter/material.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/screens/user/home_screen.dart';
import 'package:h_m/presentation/widget/switch_tab_bar.dart';

import '../presentation/screens/user/favorite_screen.dart';
import '../presentation/screens/user/more_screen.dart';
import '../presentation/screens/user/offers_screen.dart';
import '../presentation/styles/colors.dart';
import '../presentation/widget/app_bar_notifications_icon.dart';
import '../presentation/widget/custom_app_bar.dart';
import '../presentation/widget/headline_text.dart';
import '../presentation/widget/medium_text.dart';

const String imageOfBrand = 'assets/images/brand1.png';
const String payment = 'assets/images/brand1.png';

const Object? selectedValueOfDropDwanItem = 'afia';
const List<DropdownMenuItem> dropDownItems = [
  DropdownMenuItem(
    value: 'afia',
    child: Text('Afia'),
  ),
  DropdownMenuItem(
    value: 'juhayna',
    child: Text('Juhayna'),
  ),
  DropdownMenuItem(
    value: 'areal',
    child: Text('Areal'),
  ),
  DropdownMenuItem(
    value: 'aquafina',
    child: Text('Aquafina'),
  ),
  DropdownMenuItem(
    value: 'tropicana',
    child: Text('Tropicana'),
  ),
  DropdownMenuItem(
    value: 'pepsi',
    child: Text('Pepsi'),
  ),
];

const List<String> carouselSliderImages = [
  'assets/images/c.png',
  'assets/images/c.png',
  'assets/images/c.png',
];

int currentPageIndex = 0;

List<dynamic> Screens = [
  HomeScreen(),
  FavoriteScreen(),
  StackOver(),
  OffersScreen(),
  MoreScreen(),
];



List<String> itemNames = [
  'Berries',
  'Citrus Fruits',
  'Core',
  'Pits',
  'Tropical Fruits',
  'Melons',
];

PreferredSizeWidget? appBars(BuildContext context){
  if(currentPageIndex == 0){
    return CustomAppBar(
      centerWidget:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MediumText(text: 'Location'),
          Icon(
            Icons.arrow_drop_down_rounded,
            color: AppColor.black,
          ),
        ],
      ),
      trailingWidget: InkWell(
        onTap: (){
          Navigator.pushNamed(context, AppRouterNames.rNotificationRoute);
        },
        child: NotificationIcon(
          thereNewNotification: true,
        ),
      ),

    );
  }
  else if(currentPageIndex == 1){
    return CustomAppBar(
        centerWidget: HeadLineText(text: 'Favorite'),
    );
  }
  else if(currentPageIndex == 2){
    return CustomAppBar(
        centerWidget: HeadLineText(
          text: 'Cart',
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ));
  }
  else if(currentPageIndex == 3){
    return CustomAppBar(
      centerWidget: HeadLineText(text: 'Offers'),
      trailingWidget: InkWell(
        onTap: (){
          Navigator.pushNamed(context, AppRouterNames.rNotificationRoute);
        },
        child: NotificationIcon(
          thereNewNotification: true,
        ),
      ),
    );
  }
  else{
    return null;
  }
}