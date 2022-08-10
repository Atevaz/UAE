import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/constants/assets_manager.dart';
import 'package:h_m/presentation/router/app_router.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/otp.dart';

import '../../router/app_animation.dart';
import 'home_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Timer? _timer;
  int _start = 59;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  TextEditingController _inactiveController1 = TextEditingController();
  TextEditingController _inactiveController2 = TextEditingController();
  TextEditingController _inactiveController3 = TextEditingController();
  TextEditingController _inactiveController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: 160.h,
                    ),
                    Text(
                      'Verification',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 32.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Copy the verification code in\n your SMS message ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    Otp(
                      controller1: _inactiveController1,
                      controller2: _inactiveController2,
                      controller3: _inactiveController3,
                      controller4: _inactiveController4,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'the code will send in ',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: _start < 10 ? '00:0$_start' : '00:$_start',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Color(0xFF3FA007),
                          ),
                        ),
                        TextSpan(
                          text: ' sec',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: 1.h),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xFF000000).withOpacity(0.59),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    DefaultButton(
                      label: 'Verify',
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRouterNames.rHomeRoute);
                      },
                      isExpanded: false,
                      context: context,
                    ),
                    Expanded(child: Container()),
                    Image.asset(AssetsManager.verificationBackground),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Second Screen'),
      ),
    );
  }
}
