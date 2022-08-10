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
    required String time,
  }) {
    return ChatMessage._(
      isSender: false,
      key: key,
      content: content,
      imageAddress: '',
      time: time,
    );
  }
  // TODO: add image
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment:
          !isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        isSender
            ? Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(imageAddress),
                  maxRadius: 15.r,
                ),
              )
            : Container(),
        Container(
          constraints: BoxConstraints(
            maxWidth: ScreenUtil().setWidth(270),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: !isSender ? Radius.circular(15) : Radius.circular(0),
              bottomRight: !isSender ? Radius.circular(0) : Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: isSender ? AppColor.white : AppColor.teal,
                //FIXME: chat_message : can't apply box shadow
              ),
              // margin: const EdgeInsets.only(left: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      content,
                      style: TextStyle(
                        color: isSender ? AppColor.black : AppColor.white,
                        fontSize: ScreenUtil().setSp(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.0.h),
                    Text(
                      time,
                      style: TextStyle(
                        color: isSender ? AppColor.black : AppColor.white,
                        fontSize: ScreenUtil().setSp(12),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
