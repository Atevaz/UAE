import 'package:flutter/material.dart';
import 'package:h_m/presentation/screens/user/offers_screen.dart';
import 'package:h_m/presentation/view/filter_bottom_sheet.dart';


class Component extends StatelessWidget {
  const Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: OffersScreen(),
          )),
    );
  }
}
