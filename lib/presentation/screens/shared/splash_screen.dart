
import 'package:flutter/material.dart';

import '../../../constants/assets_manager.dart';
import '../../router/app_router_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.of(context).pushReplacementNamed(AppRouterNames.rHomeRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AssetsManager.splashBg,
        fit: BoxFit.cover,
      ),
    );
  }
}
