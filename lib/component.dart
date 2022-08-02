import 'package:flutter/material.dart';
import 'package:h_m/presentation/screens/shared/splash_screen.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/default_phone_number_form_field.dart';
import 'package:h_m/presentation/widget/otp.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();
    TextEditingController controller4 = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                DefaultFormField(
                  keyboard: TextInputType.name,
                  controller: controller1,
                  hintText: 'sadfghj',
                    label: 'dsafghj',
                  validateText: 'dfghjgfdsadfghgfds',



                ),
                DefaultButton(label: 'test', onPressed: (){
                  if(formKey.currentState!.validate()){
                   print('dsfghjk') ;

                  }
                }, isExpanded: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
