// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:h_m/constants/assets_manager.dart';
// import 'package:h_m/presentation/styles/colors.dart';
// import 'package:h_m/presentation/widget/brand_componant.dart';
// import 'package:h_m/presentation/widget/custom_app_bar.dart';
// import 'package:h_m/presentation/widget/filtter_button.dart';
// import 'package:h_m/presentation/widget/medium_text.dart';
//
// import '../../widget/default_form_field.dart';
//
// class BrandsScreen extends StatelessWidget {
//   BrandsScreen({Key? key}) : super(key: key);
//   List<Widget> brandList = [
//     BrandComponent(
//       image: AssetsManager.brand1,
//     ),
//     BrandComponent(
//       image: AssetsManager.brand2,
//     ),
//     BrandComponent(
//       image: AssetsManager.brand3,
//     ),
//     BrandComponent(
//       image: AssetsManager.brand4,
//     ),
//     BrandComponent(
//       image: AssetsManager.brand5,
//     ),
//     BrandComponent(
//       image: AssetsManager.brand6,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         centerWidget: MediumText(text: 'All companies'),
//         trailingWidget: Icon(
//           Icons.notifications_active_sharp,
//           color: AppColor.teal,
//         ),
//       ),
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Padding(
//           padding: EdgeInsets.all(18.r),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// search bar
//               Container(
//                 height: 43.h,
//                 child: Row(
//                   children: [
//                     Expanded(
//                         flex: 15,
//                         child: DefaultFormField(
//                           controller: TextEditingController(),
//                           keyboard: TextInputType.text,
//                           prefixIcon: Icon(Icons.search),
//                           suffixIcon: Icon(Icons.photo_camera_outlined),
//                           borderColor: AppColor.white,
//                           focusedBorderColor: AppColor.white,
//                           hintText: 'Search',
//                           fillColor: AppColor.containerBG,
//                         )),
//                     Spacer(),
//                     Expanded(flex: 2, child: FilterButton()),
//                   ],
//                 ),
//               ),
//
//               /// brands
//               Expanded(
//                 child: Container(
//                   child: SingleChildScrollView(
//                     child: CustomScrollView(
//                       primary: false,
//                       slivers: <Widget>[
//                         SliverPadding(
//                           padding: const EdgeInsets.all(20),
//                           sliver: SliverGrid.count(
//                             crossAxisSpacing: 10,
//                             mainAxisSpacing: 10,
//                             crossAxisCount: 2,
//                             children: brandList,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//     ;
//   }
// }
