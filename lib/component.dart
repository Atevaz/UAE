import 'package:flutter/material.dart';

import 'package:h_m/presentation/widget/icon.dart';
import 'constants/assets_manager.dart';


class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.blue,
        body: Center(
          child: IconComponent(
            containerHeight: 55,
            containerWidth: 55,
            imageName: AssetsManager.arrow,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
