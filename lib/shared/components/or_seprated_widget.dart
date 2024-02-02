import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanitas/shared/components/text_widget.dart';
import '../styles/colors.dart';

class OrSeperatedWidget extends StatelessWidget {
  const OrSeperatedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 110,
          color: buttonColor,
        ),
        SizedBox(
          width: 5.w,
        ),
        DefaultText(
          text: "Or",
          fontSize: 14.sp,
          fontColor: textColor,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          width: 5.w,
        ),
        Container(
          height: 1,
          width: 110,
          color: buttonColor,
        ),
      ],
    );
  }
}
