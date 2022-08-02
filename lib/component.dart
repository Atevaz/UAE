import 'package:flutter/material.dart';
import 'package:h_m/presentation/view/filter_bottom_sheet.dart';
import 'package:h_m/presentation/widget/chat_message.dart';
import 'package:h_m/presentation/widget/icon.dart';
import 'constants/assets_manager.dart';
import 'presentation/widget/switch_button.dart';
import 'presentation/widget/switch_tab_bar.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FilterBottomSheet(),
          )),
    );
  }
}
