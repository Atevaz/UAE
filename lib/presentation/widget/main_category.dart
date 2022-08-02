import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'medium_text.dart';

Widget mainCategory(
        {required double? containerHeight,
        required double? containerWidth,
        required String categoryText,
        required String imageName}) =>
    Container(
        padding: EdgeInsets.all(10),
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
            color: AppColor.blueGrey.withOpacity(.3),
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Positioned(
              child: MediumText(
                text: categoryText,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Image(
                  image: AssetImage(
                    imageName,
                  ),
                ))
          ],
        ));
