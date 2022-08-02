import 'package:flutter/material.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/default_phone_number_form_field.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: defaultButton(
            context: context,
            fontSize: 22,
            label: 'login',
            onPressed: (){},
                isExpanded: false,
          )),
        ),
      ),
    );
  }
}
