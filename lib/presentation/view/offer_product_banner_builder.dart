import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/offer_product_banner.dart';


class OfferProductBannerBuilder extends StatelessWidget {
  const OfferProductBannerBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 168.w/250.h ,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(20,
              (index) => OffersProductsBanner()),
    );
  }
}
