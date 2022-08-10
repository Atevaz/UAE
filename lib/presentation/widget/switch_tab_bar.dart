import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/view/old_orders.dart';

class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change height to preferred height]
            Container(
              height: 50.h,
              width: 320.w,
              decoration: BoxDecoration(
                color: AppColor.offWhite,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0.r,
                  ),
                  color: AppColor.teal,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Current order',
                  ),
                  Tab(
                    text: 'Old Order',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  /// cart screen tab bar
                  Center(
                    child:
                        CartScreen(showAppBar: false, showSideImage: false),
                  ),

                  /// old orders tab bar
                  Center(
                    child:
                        OldOrders(showSideImage: false, showAppBar: false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
