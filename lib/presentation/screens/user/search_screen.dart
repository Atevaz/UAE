import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors.dart';
import '../../widget/default_form_field.dart';
import '../../widget/filtter_button.dart';

class SearchScreen extends StatefulWidget {
   SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isWriting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              Container(
                height: 43.h,
                child: Row(
                  children: [
                    Expanded(
                        child: DefaultFormField(
                          onChanged: (value){
                            if(value.length > 0)
                            setState(() {
                              isWriting = true;
                            });
                          },
                          controller: TextEditingController(),
                          keyboard: TextInputType.text,
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColor.black,
                          ),
                          suffixIcon: Icon(
                            Icons.photo_camera_outlined,
                            color: AppColor.black,
                          ),
                          borderColor: AppColor.white,
                          focusedBorderColor: AppColor.white,
                          hintText: 'Search',
                          fillColor: AppColor.offWhite,
                        )),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.r),
                      child: FilterButton(),
                    ),
                  ],
                ),
              ),
              if(isWriting)
                Container(height: 300,width: 50,color: AppColor.red,)
            ],
          ),
        ),
      ),
    );
  }
}
