import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanitas/modules/Sign%20up%20Screen.dart';
import 'package:sanitas/modules/user_information.dart';
import 'package:sanitas/shared/components/navigate_widget.dart';
import 'package:sanitas/shared/styles/colors.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/or_seprated_widget.dart';
import '../shared/components/text_box_form_widget.dart';
import '../shared/components/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: defaultAppbar(
        title: "Sign In",
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
                text: "Welcome To Sanitas",
                fontSize: 24.sp,
                fontColor: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 30.h,
              ),
              DefaultText(
                text: "Please enter Email & Password",
                fontSize: 16.sp,
                fontColor: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextBoxForInput(
                title: "Email Address",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultText(
                    text: "Forget Password?",
                    fontSize: 12.sp,
                    fontColor: textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomRoundedButton(
                title: "SIGN IN",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultText(
                    text: "Don't have account?",
                    fontSize: 12.sp,
                    fontColor: textColor,
                    fontWeight: FontWeight.w300,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, const SignUpPage());
                    },
                    child: DefaultText(
                      text: "Create new account.",
                      fontSize: 12.sp,
                      fontColor: textColorGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              OrSeperatedWidget(),
              SizedBox(
                height: 40.h,
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
