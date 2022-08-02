import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h_m/presentation/styles/colors.dart';

import '../../constants/constants.dart';

class DropDownComponent extends StatefulWidget {
  final List<DropdownMenuItem> dropdownItems ;
  Object? selectedValue ;
  DropDownComponent({Key? key, this.selectedValue = selectedValueOfDropDwanItem , this.dropdownItems = dropDownItems}) : super(key: key);

  @override
  State<DropDownComponent> createState() => _DropDownComponentState(dropdownItems: dropdownItems , selectedValue: selectedValue);
}

class _DropDownComponentState extends State<DropDownComponent> {

  _DropDownComponentState({this.selectedValue = selectedValueOfDropDwanItem, this.dropdownItems = dropDownItems});

  final List<DropdownMenuItem> dropdownItems ;
  Object? selectedValue ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50.h,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(
            color: AppColor.teal,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: DropdownButton<dynamic>(
              alignment: Alignment.centerLeft,
              isExpanded: true,
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.grey,
              ),
              elevation: 16,
              style: const TextStyle(
                color: Colors.grey,
                fontFamily: 'Medium',
              ),
              underline: Container(),
              value: selectedValue,
              items: dropdownItems,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              }),
        ),
      ),
    );
  }
}
