import 'package:flutter/material.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/regular_text.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Card(
          elevation: 4,
          child: const Icon(
            Icons.delete_outline,
            color: AppColor.red,
            size: 40,
          ),
        ),
      ),
      key: ValueKey('value'),
      child: Container(
        height: 78,
        child: ListTile(
          leading: Image.asset(AssetsManager.notification),
          tileColor: Color(0xF1F747E),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegularText(
                text: 'Do you know ?!',
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: RegularText(
                  text: 'You have special discount up to 20% on vegetables section ,You have special daily discount',
                  color: Color(0xa1000000),
                  fontFamily: 'Roboto',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.fade,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
