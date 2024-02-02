import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanitas/modules/photo_result_screen.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/navigate_widget.dart';
import '../shared/components/text_widget.dart';
import '../shared/styles/colors.dart';

class PhotoAnalysisPage extends StatelessWidget {
  const PhotoAnalysisPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: defaultAppbar(
        title: "Photo Analysis",
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
        ),
        actionWidget: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 25.w, top: 60.h, end: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200.w,
                height: 200.h,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  color: buttonColor,
                  backgroundColor: Colors.grey.withOpacity(.4),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              DefaultText(
                text: "Analysis is in progress...",
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
                    "Once the image is analyzed, the results will be shown to you with all the details",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontColor: Colors.black,
                align: TextAlign.start,
                height: 1.5,
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomRoundedButton(
                title: "Back",
                fontSize: 14.sp,
                fontColor: Colors.white,
                colorButton: buttonColor,
                widthContainer: MediaQuery.of(context).size.width,
                heightContainer: 48.h,
                onPressed: () {
                  navigateTo(context, const PhotoResultScreen());
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
