import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class FavouriteView extends StatefulWidget {
  FavouriteView({Key? key}) : super(key: key);

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  final String name = 'Carton of Grapes';

  final double price = 200;

  final int starCount = 3;

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Material(
            elevation: 2,
            child: Container(
              padding: EdgeInsets.only(
                bottom: 20,
                top: 10,
              ),
              height: 225.h,
              width: 168.w,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                              print('isFavorite $isFavorite');
                            });
                          },
                          icon: !isFavorite
                              ? Icon(
                                  Icons.favorite_border_outlined,
                                  color: AppColor.red,
                                  size: 25.r,
                                )
                              : Icon(
                                  Icons.favorite,
                                  color: AppColor.red,
                                  size: 25.r,
                                ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Image.asset(AssetsManager.grapes),
                  ),
                  Expanded(
                    flex: 2,
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
                            flex: 3,
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
                                    size: 15,
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
      ),
    );
  }
}
