import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanitas/shared/styles/colors.dart';

import '../shared/components/appbar_widget.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/text_widget.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: buttonColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: defaultAppbar(
          title: "Profile",
          centerTitle: true,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          backgroundColorAppbar: buttonColor,
          statusBarIconBrightness: Brightness.dark,
          fontColor: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          leadingWidget : GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          )
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 35.h),
            child: Container(
              height: double.infinity ,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  topLeft: Radius.circular(60),
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 25.w, top: 60.h, end: 25.w, bottom: 20.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: DefaultText(
                              text: "User Name:",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              fontColor: textColorGrey2,
                              align: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: DefaultText(
                              text: "Alaa Ahmed",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontColor: Colors.black,
                              align: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height:1, width: double.infinity, color: Colors.black.withOpacity(.20),),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w, bottom: 20.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: DefaultText(
                              text: "Sex:",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              fontColor: textColorGrey2,
                              align: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: DefaultText(
                              text: "Female",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontColor: Colors.black,
                              align: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height:1, width: double.infinity, color: Colors.black.withOpacity(.20),),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w, bottom: 20.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DefaultText(
                              text: "Chronic Diseases:",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              fontColor: textColorGrey2,
                              align: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: DefaultText(
                              text: "Diabetes, High blood pressure",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontColor: Colors.black,
                              align: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height:1, width: double.infinity, color: Colors.black.withOpacity(.20),),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w, bottom: 20.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DefaultText(
                              text: "Allergic to:",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              fontColor: textColorGrey2,
                              align: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: DefaultText(
                              text: "Lactose products",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontColor: Colors.black,
                              align: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height:1, width: double.infinity, color: Colors.black.withOpacity(.20),),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w, bottom: 20.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DefaultText(
                              text: "Prohibited ingredients:",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              fontColor: textColorGrey2,
                              align: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: DefaultText(
                              text: "Sugar, substances that cause highblood pressure and lactose",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontColor: Colors.black,
                              align: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height:1, width: double.infinity, color: Colors.black.withOpacity(.20),),
                    SizedBox(height: 40.h,),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 25.w, top: 0.h, end: 25.w),
                      child: CustomRoundedButton(
                        title: "EDIT PROFILE",
                        fontSize: 14.sp,
                        fontColor: Colors.white,
                        colorButton: buttonColor,
                        widthContainer: MediaQuery.of(context).size.width,
                        heightContainer: 48.h,
                        onPressed: (){
                          //navigateTo(context, const ProductsSearch());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 74.w,
            height: 76.h,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profileBigger.png'),
                )),
          ),
        ],
      ),
    );
  }
}