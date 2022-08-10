import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/contact_us_writing_message_field.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

import '../../widget/chat_message.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
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
                          imageAddress:
                              'https://i.ibb.co/5hGs5t3/90469564-v-4.jpg',
                          content: 'لا رفعت ',
                          time:
                              '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ChatMessage.sender(
                          imageAddress:
                              'https://i.ibb.co/5hGs5t3/90469564-v-4.jpg',
                          content: 'لا رفعت ',
                          time:
                              '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ChatMessage.sender(
                          imageAddress:
                              'https://i.ibb.co/5hGs5t3/90469564-v-4.jpg',
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
                        ChatMessage.reciever(
                          // imageAddress: '',
                          content: 'خلاص ماشي ',
                          time:
                              '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                        ),
                        SizedBox(
                          height: 10.h,
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
                        ChatMessage.reciever(
                          // imageAddress: '',
                          content: 'خلاص ماشي ',
                          time:
                              '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                        ),
                        SizedBox(
                          height: 10.h,
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
                        ChatMessage.reciever(
                          // imageAddress: '',
                          content: 'خلاص ماشي ',
                          time:
                              '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                        ),
                        SizedBox(
                          height: 10.h,
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
                        ChatMessage.reciever(
                          // imageAddress: '',
                          content: 'خلاص ماشي ',
                          time:
                              '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
                        ),
                        SizedBox(
                          height: 10.h,
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
                // Expanded(child: Container()),
                Column(
                  children: [
                    WritingMessageField(),
                  ],
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
