import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/popular_banner.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/product_description.dart';
import 'package:h_m/presentation/widget/product_details_status.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios,
        leadingIconOnPressed: () {
          Navigator.pop(context);
        },
        trailingWidget: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRouterNames.rCartRoute);
          },
          icon: Icon(
            Icons.shopping_cart,
            color: AppColor.teal,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 290,
                          width: double.infinity,
                          margin: const EdgeInsetsDirectional.only(start: 40.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Align(
                              alignment: AlignmentDirectional.topEnd,
                              child: IconButton(
                                  onPressed: () {},
                                  iconSize: 30.0,
                                  icon: Icon(Icons.favorite,
                                      color: AppColor.red))),
                        ),
                        Image.asset(
                          AssetsManager.grape,
                          fit: BoxFit.cover,
                          height: 300.h,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ProductDescription(
                      productName: "Carton of Fresh red Grapes",
                      productPrice: "240 LE",
                      productDescription:
                          "Every Carton has 15 k of red grabes. You can order more about the available quantity , whether A, B, or C class.",
                      orderCount: 1,
                      numOfReview: "10 Reviews",
                      starReviewCount: 2,
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 85,
                      width: double.infinity,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => ProductDetailsStatus(
                          newPrice: "200 LE",
                          oldPrice: "300 LE",
                          productCount: "1000 - 2000 pieces",
                          backGroundColor: AppColor.white,
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                        itemCount: 5,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    HeadLineText(
                        text: "Similar products",
                        fontSize: 20.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 240.0.h,
                      width: double.infinity,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            PopularBanner(isFavourite: false),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                                fontSize: 19,
                                color: AppColor.teal,
                                fontFamily: "Roboto"),
                          ),
                          Text(
                            "1500 LE",
                            style: TextStyle(
                                fontSize: 19,
                                color: AppColor.teal,
                                fontFamily: "Roboto"),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: DefaultButton(
                        label: "Add To Cart",
                        onPressed: () {},
                        isExpanded: false,
                        context: context,
                        height: 60.0,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Roboto",
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
