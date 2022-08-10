import 'package:flutter/material.dart';

import '../../../constants/assets_manager.dart';
import '../../widget/switch_tab_bar.dart';

class OldOrderScreen extends StatelessWidget {
  const OldOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            child: StackOver(),
          ),
        ),

        /// top side image
        Positioned(child: Image.asset(AssetsManager.sidePic), right: 0),
      ],
    );
  }
}
