import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanitas/modules/meat_search.dart';
import 'package:sanitas/shared/components/navigate_widget.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/card_scrollable_product.dart';
import '../shared/components/text_widget.dart';
import '../shared/styles/colors.dart';

class PhotoResultScreen extends StatelessWidget {
  const PhotoResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: defaultAppbar(
        title: "Photo Result",
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            padding: const EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
              color: buttonColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              'assets/images/productDetail.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: DraggableScrollableSheet(
                    initialChildSize: .7,
                    minChildSize: .6,
                    maxChildSize: .94,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return SingleChildScrollView(
                        controller: scrollController,
                        child: Container(
                          // height: MediaQuery.of(context).size.height*.7,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              )),
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 54.w,
                                      height: 4.h,
                                      color: scrollColor,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(end: 15.w),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.close),
                                      Expanded(
                                        child: DefaultText(
                                          text: "Results",
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w800,
                                          fontColor: Colors.black,
                                          align: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                SvgPicture.asset("assets/icons/icon.svg"),
                                SizedBox(
                                  height: 12.h,
                                ),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "This product is",
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )),
                                      TextSpan(
                                          text: " not suitable ",
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500,
                                            color: redColor,
                                          )),
                                      TextSpan(
                                          text: "for your health condition.",
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              height: 1.5)),
                                    ])),
                                SizedBox(
                                  height: 10.h,
                                ),
                                DefaultText(
                                  text: "This product contains",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  fontColor: Colors.black.withOpacity(.7),
                                  align: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 5,
                                      height: 2,
                                      color: redColor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    DefaultText(
                                      text: "Sugar",
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      fontColor: redColor,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: DefaultText(
                                        text:
                                            "It will raise your diabetes level.",
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        fontColor: Colors.black.withOpacity(.7),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    DefaultText(
                                      text:
                                          "- Components that cause high blood\n  pressure.",
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      fontColor: redColor,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 5,
                                      height: 2,
                                      color: redColor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    DefaultText(
                                      text: "Allergen",
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      fontColor: redColor,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: DefaultText(
                                        text: "Lactose.",
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        fontColor: Colors.black.withOpacity(.7),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(.20),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                DefaultText(
                                  text: "It may suit you:",
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  fontColor: Colors.black.withOpacity(.66),
                                  align: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          navigateTo(context,
                                              const MeatSearchScreen());
                                        },
                                        child: const CardScrollableProduct()),
                                    const CardScrollableProduct(),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
