import 'package:flutter/material.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HeadLineText(text: 'More Screen'),
    );
  }
}
