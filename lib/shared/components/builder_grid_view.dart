import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanitas/shared/components/text_widget.dart';

class BuilderGridViewMeat extends StatelessWidget{
  const BuilderGridViewMeat({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      width: 140.w,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/meat.png'),
          SizedBox(height: 10.h,),
          DefaultText(
            text: "Meat",
            fontSize: 16.sp,
            fontColor:  Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

class BuilderGridViewVegetable extends StatelessWidget{
  const BuilderGridViewVegetable({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      width: 140.w,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/product.png'),
          SizedBox(height: 10.h,),
          DefaultText(
            text: "Farkhondeh",
            fontSize: 16.sp,
            fontColor:  Colors.black,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 5.h,),
          Row(
            children: [
              Container(
                width: 5.w,
                height: 5.h,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 3.w),
              DefaultText(
                text: "Sugar Free",
                fontSize: 14.sp,
                fontColor:  Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}