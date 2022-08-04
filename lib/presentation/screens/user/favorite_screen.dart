import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
import 'package:h_m/presentation/view/favourite_view.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/headline_text.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerWidget: HeadLineText(text: 'Favorite'),
        leadingIcon: Icons.arrow_back_ios,
        leadingIconOnPressed: (){}
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 168.w / 225.h,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 14.w,
          ),
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return FavouriteView();
          },
        ),
      ),
      bottomNavigationBar: BottomNavBarView(index: 1),
    );
  }
}
