import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

enum Language { arabic, english }

class SettingLanguageExpansionTile extends StatefulWidget {
  const SettingLanguageExpansionTile({Key? key}) : super(key: key);

  @override
  State<SettingLanguageExpansionTile> createState() =>
      _SettingLanguageExpansionTileState();
}

class _SettingLanguageExpansionTileState
    extends State<SettingLanguageExpansionTile> {
  Language? _language = Language.english;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12, blurRadius: 5.0, offset: Offset(0.0, 0.75))
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          controlAffinity: ListTileControlAffinity.trailing,
          iconColor: AppColor.teal,
          initiallyExpanded: true,
          title: Row(
            children: [
              Icon(
                Icons.language,
                color: AppColor.teal,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Language',
                  style: TextStyle(
                      color: AppColor.teal,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
              ),
            ],
          ),

          /// answer
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: RadioListTile<Language>(
                    title: Text('English',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp)),
                    value: Language.english,
                    activeColor: AppColor.teal,
                    groupValue: _language,
                    onChanged: (Language? value) {
                      setState(() {
                        _language = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: RadioListTile<Language>(
                    title: Text(
                      'عربي',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp),
                    ),
                    value: Language.arabic,
                    groupValue: _language,
                    activeColor: AppColor.teal,
                    onChanged: (Language? value) {
                      setState(() {
                        _language = value;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///
//
