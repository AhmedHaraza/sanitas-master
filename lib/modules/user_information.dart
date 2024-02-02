// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../layouts/home_layout.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/dropdown_widget.dart';
import '../shared/components/name_text_form.dart';
import '../shared/components/navigate_widget.dart';
import '../shared/components/text_widget.dart';
import '../shared/styles/colors.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({super.key});

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String currentValueSex = 'male';
  String currentValueChronic = 'male';
  String currentValueSexProhibited = 'male';
  String currentValueSexAllergic = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: defaultAppbar(
        title: "Personal Details",
        centerTitle: true,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        backgroundColorAppbar: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        fontColor: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: "Name",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontColor: textColorBlack,
              ),
              SizedBox(
                height: 14.h,
              ),
              DefaultNameTextForm(
                controller: nameController,
              ),
              SizedBox(
                height: 22.h,
              ),
              DefaultText(
                text: "Age",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontColor: textColorBlack,
              ),
              SizedBox(
                height: 14.h,
              ),
              DefaultNameTextForm(
                controller: ageController,
              ),
              SizedBox(
                height: 22.h,
              ),
              DefaultText(
                text: "Sex",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontColor: textColorBlack,
              ),
              SizedBox(
                height: 14.h,
              ),
              DefaultDropDown(
                currentValue: currentValueSex,
                onChange: (value) {
                  setState(() {
                    currentValueSex = value!;
                  });
                },
                items: ['male', 'female', 'other'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 22.h,
              ),
              DefaultText(
                text: "chronic diseases",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontColor: textColorBlack,
              ),
              SizedBox(
                height: 14.h,
              ),
              DefaultDropDown(
                currentValue: currentValueChronic,
                onChange: (value) {
                  setState(() {
                    currentValueChronic = value!;
                  });
                },
                items: ['male', 'female', 'other'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 22.h,
              ),
              DefaultText(
                text: "Prohibited ingredients",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontColor: textColorBlack,
              ),
              SizedBox(
                height: 14.h,
              ),
              DefaultDropDown(
                currentValue: currentValueSexProhibited,
                onChange: (value) {
                  setState(() {
                    currentValueSexProhibited = value!;
                  });
                },
                items: ['male', 'female', 'other'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 22.h,
              ),
              DefaultText(
                text: "Allergic to",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontColor: textColorBlack,
              ),
              SizedBox(
                height: 14.h,
              ),
              DefaultDropDown(
                currentValue: currentValueSexAllergic,
                onChange: (value) {
                  setState(() {
                    currentValueSexAllergic = value!;
                  });
                },
                items: ['male', 'female', 'other'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 38.h,
              ),
              CustomRoundedButton(
                title: "Confirm",
                fontSize: 14.sp,
                fontColor: Colors.white,
                colorButton: buttonColor,
                widthContainer: MediaQuery.of(context).size.width,
                heightContainer: 48.h,
                onPressed: () {
                  navigateTo(context, const HomeLayout());
                },
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
