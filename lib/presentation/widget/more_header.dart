
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'headline_text.dart';
import 'icon.dart';
import 'regular_text.dart';

class MoreHeader extends StatelessWidget {
  final String name;
  final String imagePath;
  final String phone;
  final Function() editOnPress;
  const MoreHeader({Key? key, required this.name, required this.phone, required this.editOnPress, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 35,
        ),
        const SizedBox(
          width: 11.0,
        ),
        Expanded(
          flex: 9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadLineText(
                text: name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                fontSize: 20.sp,
              ),
              RegularText(
                  text: phone,
                  fontSize: 12,
                  color: Color(0xff1F747E)),
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: editOnPress,
          child: IconComponent(
            imageName: "assets/icons/edit.png",
            color: Color(0xff1F747E),
            containerWidth: 12.0,
            containerHeight: 14.96,
          ),
        ),
      ],
    );
  }
}
