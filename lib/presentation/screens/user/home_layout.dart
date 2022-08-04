// import 'package:flutter/material.dart';
// import 'package:h_m/presentation/screens/user/home_screen.dart';
// import 'package:h_m/presentation/styles/colors.dart';
// import 'package:h_m/presentation/view/buttom_nav_bar_view.dart';
// import 'package:h_m/presentation/widget/custom_app_bar.dart';
// import 'package:h_m/presentation/widget/medium_text.dart';
//
// class HomeLayout extends StatelessWidget {
//   const HomeLayout({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: CustomAppBar(
//           centerWidget: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               MediumText(text: 'Location'),
//               Icon(
//                 Icons.arrow_drop_down_rounded,
//                 color: AppColor.black,
//               ),
//             ],
//           ),
//           trailingWidget: Icon(Icons.notifications_active_sharp),
//         ),
//         body: HomeScreen(),
//         bottomNavigationBar: BottomNavBarView(),
//       ),
//     );
//   }
// }
