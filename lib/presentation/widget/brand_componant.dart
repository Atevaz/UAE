import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/constants.dart';

class BrandComponent extends StatelessWidget {

  final String image ;

  const BrandComponent({Key? key , this.image = imageOfBrand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border : Border.all(
          color: Colors.grey ,
          width: 2.w
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(image,width: 60.w,height: 60.h,),
      ),
    );
  }
}
