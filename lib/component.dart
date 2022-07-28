import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/view/carousel_view.dart';
import 'package:h_m/presentation/widget/payemnt_method_component.dart';
import 'package:h_m/presentation/widget/payment_item_component.dart';
class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

       body: CarouselView(),
        // bottomNavigationBar: BottomNavBarView(),

      ),
    );
  }
}
