import 'package:flutter/material.dart';

import '../../constants/assets_manager.dart';
import '../styles/colors.dart';
import '../widget/headline_text.dart';
import '../widget/medium_text.dart';
import '../widget/regular_text.dart';

class CartView extends StatelessWidget {
  int? quantity = 5;
  int? price = 100;
  String productName = 'Red Grapes';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 108,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.1),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// image
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage(AssetsManager.grape),
                  ),
                ),

                /// name , quantity and price
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(top: 10, right: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          /// name row
                          Row(
                            children: [
                              HeadLineText(
                                text: 'Name : ',
                                fontSize: 14,
                              ),
                              RegularText(
                                fontSize: 12,
                                text: productName,
                                color: AppColor.teal,
                              )
                            ],
                          ),

                          /// quantity row
                          Row(
                            children: [
                              HeadLineText(
                                text: 'Quantities : ',
                                fontSize: 14,
                              ),
                              RegularText(
                                fontSize: 12,
                                text: '$quantity cartoons',
                                color: AppColor.teal,
                              )
                            ],
                          ),

                          /// price row
                          Row(
                            children: [
                              HeadLineText(
                                text: 'Price : ',
                                fontSize: 14,
                              ),
                              RegularText(
                                fontSize: 12,
                                text: '$price LE',
                                color: AppColor.teal,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Positioned(
                right: 10,
                bottom: 5,
                child: Container(
                  width: 79,
                  height: 33,
                  decoration: BoxDecoration(
                    color: AppColor.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            quantity = quantity! - 1;
                            print(quantity);
                          },
                          iconSize: 14,
                          color: AppColor.white,
                          icon: Icon(
                            Icons.remove,
                          ),
                        ),
                      ),
                      Expanded(
                          child: MediumText(
                        text: quantity.toString(),
                        textAlign: TextAlign.center,
                        color: AppColor.white,
                        fontSize: 14,
                      )),
                      Expanded(
                          child: IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          quantity = quantity! + 1;
                        },
                        iconSize: 14,
                        color: AppColor.white,
                        icon: Icon(
                          Icons.add,
                        ),
                      )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
