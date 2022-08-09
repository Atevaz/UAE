import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:h_m/presentation/router/app_router_names.dart';
import 'package:h_m/presentation/styles/colors.dart';
import 'package:h_m/presentation/widget/custom_app_bar.dart';
import 'package:h_m/presentation/widget/default_button.dart';
import 'package:h_m/presentation/widget/default_form_field.dart';
import 'package:h_m/presentation/widget/headline_text.dart';
import 'package:h_m/presentation/widget/medium_text.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(59.436962, 24.753574),
    zoom: 10,
  );

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Completer<GoogleMapController> _controller = Completer();

  var _mapStyle;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/json/1.txt').then((string) {
      _mapStyle = string;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerWidget: HeadLineText(
            text: 'Select Your Location',
            fontSize: 20.sp,
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, AppRouterNames.rLoginRoute);
                    },
                    child: MediumText(
                      text: 'Skip',
                      color: AppColor.teal,
                    ))
              ],
            ),
            DefaultFormField(
              controller: TextEditingController(),
              keyboard: TextInputType.text,
              fillColor: AppColor.offWhite,
              suffixIcon: Icon(
                Icons.cancel,
                color: AppColor.red,
              ),
              borderColor: AppColor.offWhite,
              focusedBorderColor: AppColor.offWhite,
              hintText: '7 sayed anbar',
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Stack(children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: LocationScreen._kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                Positioned(
                  child: DefaultButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, AppRouterNames.rLoginRoute);
                    },
                    label: 'Done',
                    isExpanded: false,
                    context: context,
                  ),
                  bottom: 60.h,
                  left: 100.w,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
