// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanitas/modules/login_screen.dart';
import 'package:sanitas/modules/user_information.dart';
import 'package:sanitas/shared/components/navigate_widget.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/or_seprated_widget.dart';
import '../shared/components/text_box_form_widget.dart';
import '../shared/components/text_widget.dart';
import '../shared/styles/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: defaultAppbar(
        title: "Sign Up",
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
                text: "Create Account",
                fontSize: 32.sp,
                fontWeight: FontWeight.w300,
                fontColor: textColor,
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultText(
                text: "Enter your Name, Email and Password",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontColor: textColorGrey,
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  DefaultText(
                    text: "for sign up.",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontColor: textColorGrey,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, const LoginScreen());
                    },
                    child: Text("Already have account?",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: buttonColor,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              TextBoxForInput(
                title: "FULL NAME",
                controller: nameController,
                fontColorTitle: Colors.black,
                fontSizeTitle: 12.sp,
                fontWeightTitle: FontWeight.w300,
                widgetSuffix: const Icon(
                  Icons.done,
                  color: buttonColor,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextBoxForInput(
                title: "EMAIL ADDRESS",
                controller: emailController,
                fontColorTitle: Colors.black,
                fontSizeTitle: 12.sp,
                fontWeightTitle: FontWeight.w300,
                widgetSuffix: const Icon(
                  Icons.done,
                  color: buttonColor,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextBoxForInput(
                title: "Password",
                controller: passwordController,
                fontColorTitle: Colors.black,
                fontSizeTitle: 12.sp,
                fontWeightTitle: FontWeight.w300,
                widgetSuffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    child: Icon(
                      isPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility,
                      color: Colors.grey,
                    )),
                keyboardType: TextInputType.number,
                obscureText: isPassword ? true : false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomRoundedButton(
                title: "SIGN UP",
                fontSize: 14.sp,
                fontColor: Colors.white,
                colorButton: buttonColor,
                widthContainer: MediaQuery.of(context).size.width,
                heightContainer: 48.h,
                onPressed: () {
                  navigateTo(context, const UserInformation());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultText(
                text:
                    "By Signing up you agree to our terms Conditions & Privacy Policy.",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontColor: textColorGrey,
                align: TextAlign.center,
                height: 1.6,
              ),
              SizedBox(
                height: 20.h,
              ),
              OrSeperatedWidget(),
              SizedBox(
                height: 30.h,
              ),
              CustomRoundedButton(
                title: "CONNECT WITH FACEBOOK",
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                fontColor: Colors.white,
                colorButton: facebookButtonColor,
                widthContainer: MediaQuery.of(context).size.width,
                heightContainer: 48.h,
                isPrefix: true,
                widget: Padding(
                  padding: EdgeInsetsDirectional.only(start: 14.w),
                  child: SvgPicture.asset("assets/icons/facebook.svg"),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomRoundedButton(
                title: "CONNECT WITH GOOGLE",
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                fontColor: Colors.white,
                colorButton: googleButtonColor,
                widthContainer: MediaQuery.of(context).size.width,
                heightContainer: 48.h,
                isPrefix: true,
                widget: Padding(
                  padding: EdgeInsetsDirectional.only(start: 14.w),
                  child: SvgPicture.asset("assets/icons/google.svg"),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
