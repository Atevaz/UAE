import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../styles/colors.dart';

Widget ExpansionTitleComponent({
  required BuildContext context,
  required String questionTxt,
  required String answerTxt,
}) =>
    Container(
      width: 350.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          controlAffinity: ListTileControlAffinity.trailing,
          iconColor: AppColor.teal,

          /// question text
          title: HeadLineText(
            text: questionTxt,
            fontSize: 15.sp,
            overflow: TextOverflow.visible,
          ),

          /// answer
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 70, bottom: 10),
              child: ListTile(
                  title: RegularText(
                fontSize: 12.sp,
                maxLines: 6,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.visible,
                color: Colors.black,
                text: answerTxt,
              )),
            ),
          ],
        ),
      ),
    );
