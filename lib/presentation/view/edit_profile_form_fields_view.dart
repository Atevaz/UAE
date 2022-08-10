import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/default_button.dart';
import '../widget/default_form_field.dart';
import '../widget/default_phone_number_form_field.dart';

class EditProfileFormFieldsView extends StatelessWidget {
  final nameController;
  final number1Controller;
  final number2Controller;
  final emailController;
  final location1Controller;
  final location2Controller;

  EditProfileFormFieldsView({
    required this.nameController,
    required this.number1Controller,
    required this.number2Controller,
    required this.emailController,
    required this.location1Controller,
    required this.location2Controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultFormField(
                  label: 'Name',
                  controller: nameController,
                  keyboard: TextInputType.name,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultPhoneNumFormField(
                  label: 'Number 1',
                  controller: number1Controller,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultPhoneNumFormField(
                  label: 'Number 2',
                  controller: number2Controller,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultFormField(
                  label: 'E-Mail',
                  controller: emailController,
                  keyboard: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultFormField(
                  label: 'Location 1',
                  controller: location1Controller,
                  keyboard: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultFormField(
                  label: 'Location 2',
                  controller: location2Controller,
                  keyboard: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r),
                child: DefaultButton(
                  context: context,
                  fontWeight: FontWeight.normal,
                  label: 'Update',
                  onPressed: () {},
                  isExpanded: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
