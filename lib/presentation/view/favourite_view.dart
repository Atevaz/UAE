import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class FavouriteView extends StatelessWidget {
  FavouriteView({Key? key}) : super(key: key);

  final String name = 'Carton of Grapes';
  final double price = 200;
  final int starCount = 3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(
              bottom: 20,
              top: 10,
            ),
            height: 225.h,
            width: 168.w,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(6.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 1.0), // shadow direction: bottom right
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: AppColor.red,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Image.asset(AssetsManager.grapes),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: HeadLineText(
                      text: name,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
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
                                  color: starCount > index
                                      ? AppColor.yellow
                                      : AppColor.grey,
                                  size: 18,
                                );
                              }),
                        ),
                        Expanded(
                          flex: 2,
                          child: RegularText(
                            text: '${price.truncate()} LE',
                            color: AppColor.teal,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}