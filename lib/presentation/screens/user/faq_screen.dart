import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/data/models/faq_model.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/expansion_tile.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../../../constants/assets_manager.dart';

class FAQScreen extends StatelessWidget {
  FAQScreen({Key? key}) : super(key: key);
  List<FaqModel> faqList = [
    FaqModel(
        question: 'How to make an order ?',
        answer:
            'Choose the procut you want add it to the cart, go to the cart icon from the bottom bar and complete the purchase process.'),
    FaqModel(
        question: 'How to delete your account ?',
        answer:
            'Go to more page, press Settings, press Delete account button and confirm it.'),
    FaqModel(
        question: 'How to return the product ?',
        answer:
            'Go to the customer services page and from there call them and send the product photo and the reason and they will contacting you to return it.'),
    FaqModel(
        question: 'How to change payment ?',
        answer:
            'Go to More page, Press payment and you can or delete a payment'),
    FaqModel(
        question: 'Which payment are supported ?',
        answer:
            'We’re support paying by cash and Credit card like Visa, master card, etc.'),
    FaqModel(
        question: 'How to change your name ?',
        answer:
            'Go to More page, Press Edit profile, then Press on the edit icon next to your name'),
    FaqModel(
        question: 'How to change your location ?',
        answer:
            'From the Top in Home screen press on the Location Icon and give it the permission then change your location.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            leadingIcon: Icons.arrow_back_ios,
            centerWidget: RegularText(
              text: 'FAQ',
              fontSize: 20.sp,
              color: AppColor.black,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            ),
          ),
          body: ListView.builder(
              itemCount: faqList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ExpansionTitleComponent(
                      context: context,
                      questionTxt: faqList[index].question,
                      answerTxt: faqList[index].answer),
                );
              }),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePicTop), right: 0),
      ],
    );
  }
}
