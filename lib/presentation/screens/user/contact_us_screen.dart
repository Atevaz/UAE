import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

import '../../styles/colors.dart';
import '../../widget/chat_message.dart';
import '../../widget/regular_text.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            centerWidget: HeadLineText(
              text: 'Contact Us',
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              fontFamily: 'Roboto',
            ),
            leadingIcon: Icons.arrow_back_ios,
            leadingIconOnPressed: () {},
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                ChatMessage.reciever(
                  // imageAddress: '',
                  content: 'بقول مترفعش علي الماستر',
                  time:
                      '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                ),
                SizedBox(
                  height: 10.h,
                ),
                ChatMessage.sender(
                  imageAddress: 'https://i.ibb.co/5hGs5t3/90469564-v-4.jpg',
                  content: 'لا رفعت ',
                  time:
                      '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                ),
                SizedBox(
                  height: 10.h,
                ),
                ChatMessage.sender(
                  imageAddress: 'https://i.ibb.co/5hGs5t3/90469564-v-4.jpg',
                  content: 'لا رفعت ',
                  time:
                      '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                ),
                SizedBox(
                  height: 10.h,
                ),
                ChatMessage.sender(
                  imageAddress: 'https://i.ibb.co/5hGs5t3/90469564-v-4.jpg',
                  content: 'لا رفعت ',
                  time:
                      '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                ),
                ChatMessage.reciever(
                  // imageAddress: '',
                  content: 'خلاص ماشي ',
                  time:
                      '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: SizedBox(child: Image.asset('assets/images/sidePicTop.png')),
        ),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child:
              SizedBox(child: Image.asset('assets/images/sidePicBottom.png')),
        ),
      ],
    );
  }
}
