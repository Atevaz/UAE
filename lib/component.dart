import 'package:flutter/material.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/cart_view.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/expansion_tile.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/medium_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CartView(),
        ),
      ),
    );
  }
}
