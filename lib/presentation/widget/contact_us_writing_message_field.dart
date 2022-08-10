import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';

class WritingMessageField extends StatelessWidget {
  const WritingMessageField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var messageController = TextEditingController();
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 0.38),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 10),
            child: IconButton(
              onPressed: () {},
              iconSize: 30.r,
              icon: Icon(Icons.add),
              color: AppColor.black,
            ),
          ),
          Expanded(
            child: DefaultFormField(
              controller: messageController,
              keyboard: TextInputType.text,
              hintText: 'Write message',
              borderColor: AppColor.white,
              fillColor: AppColor.white,
              focusedBorderColor: AppColor.white,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                bottom: 15.h, start: 10.w, end: 10.w),
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: AppColor.lightBlue,
              child: IconButton(
                padding: EdgeInsetsDirectional.only(start: 5.w),
                onPressed: () {},
                icon: Icon(Icons.send),
                color: AppColor.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
