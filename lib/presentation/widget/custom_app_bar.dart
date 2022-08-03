import 'package:flutter/material.dart';
import '../styles/colors.dart';

PreferredSizeWidget? CustomAppBar({
  IconData? leadingIcon,
  void Function()? leadingIconOnPressed,
  Widget? centerWidget,
  IconData? trailingIcon,
  void Function()? trailingIconOnPressed,
}) =>
    AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,

      /// arrow back icon button
      leading: IconButton(
          icon: Icon(
            leadingIcon,
            color: Colors.black,
          ),
          onPressed: leadingIconOnPressed),

      /// center widget
      title: centerWidget,
      centerTitle: true,

      /// trailing icon button
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
              onPressed: trailingIconOnPressed,
              icon: Icon(
                trailingIcon,
                color: AppColor.teal,
              )),
        )
      ],
    );
