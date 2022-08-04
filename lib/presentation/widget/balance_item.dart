import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class BalanceItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String numOfCoin;
  const BalanceItem({Key? key, required this.iconPath, required this.title, required this.numOfCoin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148.sm,
      height: 98.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        color: Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  iconPath,
                  width: 20.8,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                RegularText(
                  text: title,
                  fontFamily: "Roboto",
                  fontSize: 18.0.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            RegularText(
              text:numOfCoin ,
              fontSize: 13.sp,
              color: Color(0xff1F747E),
              fontFamily: "Roboto",
            )
          ],
        ),
      ),
    );
  }
}
