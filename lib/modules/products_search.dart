import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanitas/modules/photo_search.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/methods_components.dart';
import '../shared/components/navigate_widget.dart';
import '../shared/components/text_widget.dart';
import '../shared/styles/colors.dart';

class ProductsSearch extends StatelessWidget {
  const ProductsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: defaultAppbar(
          title: "Products Search",
          centerTitle: true,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          backgroundColorAppbar: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          fontColor: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          leadingWidget: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 25.w, top: 60.h, end: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  uploadImage();
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/purple.svg'),
                    SvgPicture.asset('assets/icons/blue.svg'),
                    Container(
                      width: 166,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.white,
                      ),
                    ),
                    SvgPicture.asset('assets/icons/camera.svg'),
                  ],
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              DefaultText(
                text: "Upload a photo of the product you want to verify.",
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                fontColor: Colors.black,
                align: TextAlign.start,
              ),
              SizedBox(
                height: 40.h,
              ),
              DefaultText(
                text:
                    "Make sure you photograph the ingredients that are often on the back of the product",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                fontColor: Colors.black,
                align: TextAlign.start,
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomRoundedButton(
                title: "UPLOAD",
                fontSize: 14.sp,
                fontColor: Colors.white,
                colorButton: buttonColor,
                widthContainer: MediaQuery.of(context).size.width,
                heightContainer: 48.h,
                onPressed: () {
                  navigateTo(context, const PhotoSearchPage());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
