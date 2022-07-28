import 'package:flutter/material.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';


class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: DefaultNumFormField(),
          ),
        ),
      ),
    );
  }
}
