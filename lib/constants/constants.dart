import 'package:flutter/material.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/screens/user/home_screen.dart';

import '../presentation/screens/user/favorite_screen.dart';
import '../presentation/screens/user/more_screen.dart';
import '../presentation/screens/user/offers_screen.dart';
import '../presentation/styles/colors.dart';
import '../presentation/widget/custom_app_bar.dart';
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
  CartScreen(showAppBar: false, showSideImage: false),
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
