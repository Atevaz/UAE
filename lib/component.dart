import 'package:flutter/material.dart';
import 'presentation/view/notification_item.dart';


class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NotificationItem(),
      ),
    );
  }
}



