import 'package:flutter/material.dart';

Widget IconComponent({
  double? containerHeight,
  double? containerWidth,
  required String imageName,
  Color? color,
}) =>
    Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Image(
        color: color,
        image: AssetImage(imageName),
      ),
    );
