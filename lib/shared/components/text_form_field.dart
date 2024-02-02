// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanitas/shared/styles/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {required this.controller,
      Key? key,
      this.validator,
      this.keyboardType,
      this.onChange,
      this.isEnabled,
      this.prefix,
      this.suffix,
      this.onTap,
      this.onFieldSubmitted,
      this.width = 394,
      this.contentPaddingHorizontal = 24,
      this.contentPaddingVertical = 12,
      this.radius = 25,
      this.fillColor,
      this.obscureText = false})
      : super(key: key);
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  Function(String)? onChange;
  Widget? prefix;
  Widget? suffix;
  bool? isEnabled;
  double width;
  dynamic onTap;
  Function(String)? onFieldSubmitted;
  double contentPaddingHorizontal;
  double contentPaddingVertical;
  double radius;
  Color? fillColor;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      obscureText: obscureText,
      enabled: isEnabled,
      style: TextStyle(color: Colors.black, fontSize: 16.sp),
      cursorColor: buttonColor,
      decoration: InputDecoration(
        fillColor: fillColor,
        contentPadding: EdgeInsets.symmetric(
            horizontal: contentPaddingHorizontal,
            vertical: contentPaddingVertical),
        helperStyle: TextStyle(height: .2.h),
        helperText: "",
        prefixIcon: prefix,
        suffixIcon: suffix,
        errorStyle: TextStyle(height: .5.h),
        border: const UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: buttonColor,
            )),
      ),
    );
  }
}
