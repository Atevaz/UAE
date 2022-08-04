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
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Image(
        color: color,
        image: AssetImage(imageName),
      ),
    );
