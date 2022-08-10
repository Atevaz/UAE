import 'package:flutter/material.dart';

PreferredSizeWidget? CustomAppBar({
  IconData? leadingIcon,
  void Function()? leadingIconOnPressed,
  Widget? centerWidget,
  Widget? trailingWidget,
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
          child: trailingWidget,
        )
      ],
    );
