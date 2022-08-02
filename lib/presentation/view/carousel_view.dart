import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/constants.dart';

class CarouselView extends StatelessWidget {
  CarouselView({Key? key}) : super(key: key);
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      items: carouselSliderImages
          .map(
            (e) => Image.asset(e),
          )
          .toList(),
      options: CarouselOptions(
        aspectRatio: .95,
          height: 150.h,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            /* setState(() {
              _current = index;
            });*/
          }),
    );
  }
}
