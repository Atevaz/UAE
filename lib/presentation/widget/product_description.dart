import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

import '../styles/colors.dart';
import 'default_button.dart';
import 'headline_text.dart';

class ProductDescription extends StatelessWidget {
  final String productName;
  const ProductDescription({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 10,
              child: HeadLineText(
                text: "Carton of Fresh red Grapes",
                fontWeight: FontWeight.w700,
                color: AppColor.black,
                fontSize: 20,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                fontFamily: "Roboto",
              ),
            ),
            const Spacer(),
            RegularText(
              text: "240 LE",
              fontSize: 19,
              fontWeight: FontWeight.w700,
              color: AppColor.teal,
              fontFamily: "Roboto",
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: RegularText(
                      text:
                      "Every Carton has 15 k of red grabes. You can order more about the available quantity , whether A, B, or C class.",
                      maxLines: 6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      defaultButton(
                        label: "-",
                        onPressed: () {},
                        fontSize: 18,
                        context: context,
                        isExpanded: false,
                        width: 28,
                        height: 22,
                        color: AppColor.teal,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 30,
                        //width: 47,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: AppColor.teal,
                            )),
                        child: Center(
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              "100",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      defaultButton(
                        label: "+",
                        onPressed: () {},
                        fontSize: 18,
                        context: context,
                        isExpanded: false,
                        width: 28,
                        height: 22,
                        color: AppColor.teal,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Icon(
                        Icons.star,
                        color: 3 > index
                            ? AppColor.yellow
                            : AppColor.grey,
                        size: 18,
                      );
                    }),
              ),
              Expanded(
                flex: 5,
                child: RegularText(
                  text: '500 LE',
                  color: AppColor.teal,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
