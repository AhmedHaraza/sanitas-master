import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:measure_size/measure_size.dart';
import 'package:sanitas/modules/profile_screen.dart';
import 'package:sanitas/shared/components/navigate_widget.dart';
import 'package:sanitas/shared/constants/shared.dart';
import '../shared/components/builder_grid_view.dart';
import '../shared/components/button_widget.dart';
import '../shared/components/text_widget.dart';
import '../shared/styles/colors.dart';

class HomeMeatPage extends StatefulWidget {
  const HomeMeatPage({super.key});

  @override
  State<HomeMeatPage> createState() => _HomeMeatPageState();
}

class _HomeMeatPageState extends State<HomeMeatPage> {
  Size size = const Size(56, 48);
  bool isMeat = true;
  bool isVegetable = false;
  bool isProducts = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: buttonColor),
      ),
      body: Column(
        children: [
          Container(
            padding:
                EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w),
            height: 200.h,
            decoration: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42.w,
                          height: 44.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.png'),
                              )),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          children: [
                            DefaultText(
                              text: "Hello, Alaa",
                              fontSize: 20.sp,
                              fontColor: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            DefaultText(
                              text: "Welcome To Sanitas",
                              fontSize: 10.sp,
                              fontColor: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        )
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          navigateTo(context, const ProfileScreen());
                        },
                        child:
                            SvgPicture.asset("assets/icons/notification.svg"))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MeasureSize(
                        onChange: (newSize) => setState(() => size = newSize),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: size.height,
                      width: 56.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: SvgPicture.asset(
                        "assets/icons/filter.svg",
                        width: 24.w,
                        height: 24.h,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsetsDirectional.only(start: 25.w, top: 20.h, end: 25.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: "Popular Now",
                      fontSize: 16.sp,
                      fontColor: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SvgPicture.asset('assets/images/banner.svg'),
                    SizedBox(
                      height: 30.h,
                    ),
                    DefaultText(
                      text: "Categories",
                      fontSize: 16.sp,
                      fontColor: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomRoundedButton(
                          title: "MEAT",
                          fontSize: 12.sp,
                          fontColor: isMeat ? buttonColor : Colors.white,
                          colorButton: isMeat ? buttonColorGrey : buttonColor,
                          fontWeight: FontWeight.w600,
                          heightContainer: 44.h,
                          widthContainer: 96.w,
                          onPressed: () {
                            setState(() {
                              isMeat = true;
                              isProducts = false;
                              isVegetable = false;
                              CacheHelper.saveData(key: "meat", value: isMeat);
                            });
                          },
                        ),
                        CustomRoundedButton(
                          title: "VEGETABLE",
                          fontSize: 12.sp,
                          fontColor: isVegetable ? buttonColor : Colors.white,
                          colorButton:
                              isVegetable ? buttonColorGrey : buttonColor,
                          fontWeight: FontWeight.w600,
                          heightContainer: 44.h,
                          widthContainer: 96.w,
                          onPressed: () {
                            setState(() {
                              isMeat = false;
                              isProducts = false;
                              isVegetable = true;
                              CacheHelper.saveData(key: "meat", value: isMeat);
                            });
                          },
                        ),
                        CustomRoundedButton(
                          title: "PRODUCTS",
                          fontSize: 12.sp,
                          fontColor: isProducts ? buttonColor : Colors.white,
                          colorButton:
                              isProducts ? buttonColorGrey : buttonColor,
                          fontWeight: FontWeight.w600,
                          heightContainer: 44.h,
                          widthContainer: 96.w,
                          onPressed: () {
                            setState(() {
                              isMeat = false;
                              isProducts = true;
                              isVegetable = false;
                              CacheHelper.saveData(key: "meat", value: isMeat);
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 200.h,
                      padding: const EdgeInsetsDirectional.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(color: Colors.grey, width: 1),
                          left: BorderSide(color: Colors.grey, width: 1),
                          right: BorderSide(color: Colors.grey, width: 1),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: getChildAspectRatio()),
                        padding: const EdgeInsetsDirectional.all(15),
                        itemCount: 3,
                        itemBuilder: (context, index) => getWidgetForGridView(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

/////////////////////////////////////////////////////////////////////////////// aspect ratio
  getChildAspectRatio() {
    if (isMeat) {
      return .8;
    } else if (isProducts) {
      return .7;
    } else if (isVegetable) {
      return .7;
    }
  }

/////////////////////////////////////////////////////////////////////////////// get widget
  getWidgetForGridView() {
    if (isMeat) {
      return const BuilderGridViewMeat();
    } else if (isProducts) {
      return const BuilderGridViewVegetable();
    } else if (isVegetable) {
      return const BuilderGridViewVegetable();
    }
  }
}
