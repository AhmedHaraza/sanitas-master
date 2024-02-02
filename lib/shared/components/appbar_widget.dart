import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanitas/shared/components/text_widget.dart';

defaultAppbar ({
  required Color backgroundColorAppbar,
  required Color systemNavigationBarColor,
  Brightness statusBarIconBrightness = Brightness.light,
  Brightness systemNavigationBarIconBrightness = Brightness.light,
  String? title,
  double? fontSize,
  Color? fontColor,
  FontWeight? fontWeight,
  String? fontFamily,
  bool centerTitle = false,
  dynamic shape,
  Widget? widget,
  Widget? leadingWidget,
  Widget? actionWidget,
}) => AppBar(
  backgroundColor: backgroundColorAppbar,
  elevation: 0,
  shape: shape,
  surfaceTintColor: Colors.transparent,
  automaticallyImplyLeading: false,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarIconBrightness: statusBarIconBrightness,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
    systemNavigationBarColor: systemNavigationBarColor,
  ),
  title: widget ??  DefaultText(
    text: title,
    fontSize: fontSize,
    fontColor:  fontColor,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  ),
  centerTitle: centerTitle,
  leading: leadingWidget ?? Container(),
  actions: [
    actionWidget ?? Container(),
    actionWidget != null ? SizedBox(width: 25.w,) : Container()
  ],
);