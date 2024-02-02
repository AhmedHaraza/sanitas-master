// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sanitas/shared/components/text_form_field.dart';
import 'package:sanitas/shared/components/text_widget.dart';

class TextBoxForInput extends StatelessWidget {
  TextBoxForInput(
      {super.key,
      this.title,
      this.controller,
      this.fontColorTitle,
      this.fontSizeTitle,
      this.fontWeightTitle,
      this.widgetSuffix,
      this.obscureText = false,
      this.keyboardType});
  String? title;
  double? fontSizeTitle;
  Color? fontColorTitle;
  FontWeight? fontWeightTitle;
  TextEditingController? controller;
  Widget? widgetSuffix;
  bool obscureText;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          text: "$title",
          fontSize: fontSizeTitle,
          fontColor: fontColorTitle,
          fontWeight: fontWeightTitle,
        ),
        CustomTextFormField(
          controller: controller!,
          suffix: widgetSuffix,
          keyboardType: keyboardType,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
