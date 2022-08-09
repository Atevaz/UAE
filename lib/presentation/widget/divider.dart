import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final double height;
  final double thickness;
  const DividerWidget({Key? key, required this.height,required this.thickness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
    );
  }
}
