import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/cart_view.dart';
import 'package:h_m/presentation/widget/add_another_location.dart';
import 'package:h_m/presentation/widget/checkout_cart_component.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/promo_code.dart';
import '../../../data/models/cart_model.dart';

/// promo code text field controller
TextEditingController? controller;

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);
  final List<CartModel> cartList = [
    CartModel(
        quantity: 100,
        price: 100,
        productName: 'Red Grapes',
        imageName: AssetsManager.grape),
    CartModel(
        quantity: 100,
        price: 100,
        productName: 'Red Grapes',
        imageName: AssetsManager.grape),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
              leadingIcon: Icons.arrow_back_ios,
              centerWidget: HeadLineText(
                text: 'Cart',
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              )),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          /// cart items list with dismissible
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: ListView.builder(
                                itemCount: cartList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Dismissible(
                                    key: UniqueKey(),
                                    onDismissed: (direction) {
                                      cartList.removeAt(index);
                                    },
                                    direction: DismissDirection.endToStart,
                                    background: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Icon(
                                          size: 40,
                                          Icons.delete,
                                          color: AppColor.red,
                                        ),
                                      ],
                                    ),
                                    child: CartView(
                                      imageName: cartList[index].imageName,
                                      price: cartList[index].price,
                                      productName: cartList[index].productName,
                                      quantity: cartList[index].quantity,
                                    ),
                                  );
                                }),
                          ),

                          /// promo code
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: PromoCode(
                                controller: controller, onPressed: () {}),
                          ),

                          /// add another location
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: AddAnotherLocation(),
                          ),

                          /// subtotal
                          CheckOutCart(
                              mainText: 'Subtotal', trailingText: '1640 LE'),

                          /// discount
                          CheckOutCart(
                              mainText: 'Discount', trailingText: '20 %'),

                          /// delivery price
                          CheckOutCart(
                              mainText: 'Delivery price',
                              trailingText: '50 LE'),

                          /// total
                          CheckOutCart(
                              mainText: 'Total',
                              trailingText: '338 LE',
                              color: AppColor.teal,
                              mainTextFontWeight: FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                ),

                /// check out button
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child: DefaultButton(
                      height: 60.h,
                      label: 'Check out',
                      onPressed: () {},
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      context: context,
                      isExpanded: true),
                ),
              ],
            ),
          ),
        ),
        Positioned(child: Image.asset(AssetsManager.sidePic), right: 0),
      ],
    );
  }
}