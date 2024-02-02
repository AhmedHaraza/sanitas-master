import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanitas/shared/components/text_widget.dart';
import '../styles/colors.dart';

class CardScrollableProduct extends StatelessWidget{
  const CardScrollableProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106.w,
      height: 116.h,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: containerGreyLight,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/productCard.png"),
          SizedBox(height: 8.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultText(
                text: "Biscuit",
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontColor: Colors.black,
              ),
              SvgPicture.asset('assets/icons/heart.svg'),
            ],
          ),
          SizedBox(height: 5.h,),
          Row(
            children: [
              DefaultText(
                text: "Free lactose",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                fontColor: textColor,
                align: TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}