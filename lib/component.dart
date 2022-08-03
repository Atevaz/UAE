import 'package:flutter/material.dart';
import 'package:h_m/presentation/screens/user/edit_profile.dart';
import 'package:h_m/presentation/screens/user/home_layout.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import 'presentation/view/notification_item.dart';

class Component extends StatelessWidget {
  const Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EditProfile();
  }
}
