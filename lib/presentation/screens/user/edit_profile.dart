import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

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
          body: SingleChildScrollView(
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
                        label: 'Update',
                        onPressed: () {},
                        isExpanded: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child:
              SizedBox(child: SvgPicture.asset('assets/images/stackTop.svg')),
        ),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: SizedBox(
              child: SvgPicture.asset('assets/images/stackBottom.svg')),
        ),
      ],
    );
  }
}
