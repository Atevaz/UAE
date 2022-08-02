import 'package:flutter/material.dart';

import '../../widget/custom_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerWidget: Text('Edit Profile')
      ),
    );
  }
}
