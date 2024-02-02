// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanitas/shared/components/text_widget.dart';

class CustomRoundedButton extends StatelessWidget {
  CustomRoundedButton(
      {super.key,
      this.colorButton,
      this.radius = 8,
      this.isPrefix = false,
      this.title,
      this.fontSize,
      this.fontColor,
      this.fontWeight,
      this.widthContainer = 307,
      this.heightContainer = 48,
      this.fontFamily,
      this.onPressed,
      this.widget});
  Color? colorButton;
  Color? fontColor;
  String? title;
  String? fontFamily;
  Function()? onPressed;
  double radius;
  double widthContainer;
  double heightContainer;
  double? fontSize;
  FontWeight? fontWeight;
  Widget? widget;
  bool isPrefix;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: widthContainer,
        height: heightContainer,
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisAlignment: widget != null
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            isPrefix ? widget! : Container(),
            //isPrefix ? SizedBox(width: 30.w) : Container(),
            Expanded(
              child: DefaultText(
                text: title,
                fontSize: fontSize,
                fontColor: fontColor,
                fontWeight: fontWeight,
                fontFamily: fontFamily,
                align: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
