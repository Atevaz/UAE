import 'package:flutter/material.dart';
import 'package:h_m/presentation/screens/user/home_screen.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/default_phone_number_form_field.dart';
import 'package:h_m/presentation/widget/otp.dart';

import 'presentation/screens/user/home_layout.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return HomeLayout();
  }
}
