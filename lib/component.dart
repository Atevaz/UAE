import 'package:flutter/material.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/default_phone_number_form_field.dart';
import 'package:h_m/presentation/widget/otp.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formKey = GlobalKey<FormState>();
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();
    TextEditingController controller4 = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: otp(
            controller1: controller1,
            controller2: controller2,
            controller3: controller3,
            controller4: controller4,
            context: context,
          )),
        ),
      ),
    );
  }
}
