import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

import '../../styles/colors.dart';
import '../../widget/chat_message.dart';
import '../../widget/regular_text.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
                ChatMessage.reciever(
                  content: 'contentcontentcontentcontentcontentcontentcontentcontentcontent',
                  imageAddress: 'assets/images/girlCircle.png',
                  time: '${TimeOfDay.fromDateTime(DateTime.now()).format(context)}',
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
