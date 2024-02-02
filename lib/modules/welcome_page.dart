// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanitas/modules/login_screen.dart';

import '../shared/components/button_widget.dart';
import '../shared/components/navigate_widget.dart';
import '../shared/styles/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/welcomePage.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/splashImage.png'),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 35.w),
                child: SvgPicture.asset('assets/images/logoWord.svg',
                    height: 80.h, width: 290.w),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 82.w),
                child: SvgPicture.asset(
                  'assets/images/textWelcomePage.svg',
                  height: 23.h,
                  width: 196.w,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 82.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 26.w),
                child: CustomRoundedButton(
                  title: "Get Started",
                  fontColor: Colors.white,
                  colorButton: buttonColor,
                  fontSize: 14.sp,
                  widthContainer: MediaQuery.of(context).size.width,
                  heightContainer: 48.h,
                  onPressed: () {
                    navigateTo(context, const LoginScreen());
                  },
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
