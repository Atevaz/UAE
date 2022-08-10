import 'package:flutter/material.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../styles/colors.dart';
import 'headline_text.dart';

class ProductDetailsStatus extends StatelessWidget {

  final String newPrice;
  final String oldPrice;
  final String productCount;
  final Color backGroundColor;
  const ProductDetailsStatus({Key? key, required this.newPrice, required this.oldPrice, required this.productCount, required this.backGroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: backGroundColor,
        border: Border.all(
          color: AppColor.teal,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            HeadLineText(
              text: newPrice,
              fontSize: 15,
              color: AppColor.teal,
              fontFamily: "Roboto",
            ),
            const SizedBox(height: 7),
            RegularText(
              text: oldPrice,
              decoration: TextDecoration.lineThrough,
              fontSize: 12,
              fontFamily: "Roboto",
            ),
            const SizedBox(height: 7),
            HeadLineText(
              text: productCount,
              fontSize: 12,
              color: AppColor.teal,
              fontFamily: "Roboto",
            ),
          ],
        ),
      ),
    );
  }
}
