import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

import '../../view/edit_profile_form_fields_view.dart';
import '../../widget/custom_app_bar.dart';
import '../../widget/default_phone_number_form_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var number1Controller = TextEditingController();
    var number2Controller = TextEditingController();
    var emailController = TextEditingController();
    var location1Controller = TextEditingController();
    var location2Controller = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
              centerWidget: MediumText(
                text: 'Edit profile',
                fontWeight: FontWeight.bold,
              ),
              leadingIcon: Icons.arrow_back_ios,
              leadingIconOnPressed: () {
                Navigator.pop(context);
              }),
          body: EditProfileFormFieldsView(
            location1Controller: location1Controller,
            emailController: emailController,
            nameController: nameController,
            location2Controller: location2Controller,
            number2Controller: number2Controller,
            number1Controller: number1Controller,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child:
              SizedBox(child: Image.asset('assets/images/sidePicTop.png')),
        ),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: SizedBox(child: Image.asset('assets/images/sidePicBottom.png')),
        ),
      ],
    );
  }
}
