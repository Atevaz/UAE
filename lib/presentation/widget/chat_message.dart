import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

class ChatMessage extends StatelessWidget {
  final String content;
  final String imageAddress;
  final String time;
  final bool isSender;
  const ChatMessage._({
    Key? key,
    required this.isSender,
    required this.content,
    required this.imageAddress,
    required this.time,
  }) : super(key: key);
  factory ChatMessage.sender({
    Key? key,
    required String content,
    required String imageAddress,
    required String time,
  }) {
    return ChatMessage._(
      isSender: true,
      key: key,
      content: content,
      imageAddress: imageAddress,
      time: time,
    );
  }
  factory ChatMessage.reciever({
    Key? key,
    required String content,
    required String imageAddress,
    required String time,
  }) {
    return ChatMessage._(
      isSender: false,
      key: key,
      content: content,
      imageAddress: imageAddress,
      time: time,
    );
  }
  // TODO: add image 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(right: 15, left: 50.0, top: 4.0, bottom: 4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: isSender ? Radius.circular(15) : Radius.circular(0),
              bottomRight: isSender ? Radius.circular(0) : Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)),
          child: Container(
            decoration:
                BoxDecoration(color: isSender ? AppColor.teal : AppColor.white,
                    //FIXME: chat_message : can't apply box shadow
                    boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black,
                    offset: Offset(0, 20),
                  )
                ]),
            // margin: const EdgeInsets.only(left: 10.0),
            child: Stack(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    right: 15.w, left: 12.0, top: 13.h, bottom: 15.h),
                child: Text(content,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: isSender ? Colors.white : Colors.black)),
              ),
              isSender
                  ? Positioned(
                      bottom: 4.h,
                      right: 10,
                      child: Text(
                        time,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: isSender ? Colors.white : Colors.black),
                      ),
                    )
                  : Positioned(
                      bottom: 4.h,
                      right: 10,
                      child: Text(
                        time,
                        style: TextStyle(fontSize: 12.sp, color: Colors.black),
                      ),
                    )
            ]),
          ),
        ),
      ),
    );
  }
}
