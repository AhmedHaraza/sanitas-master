// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DefaultDropDown extends StatelessWidget {
  DefaultDropDown(
      {super.key,
      required this.currentValue,
      required this.onChange,
      required this.items});
  void Function(String?) onChange;
  String currentValue;
  List<DropdownMenuItem<String>> items;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(color: Colors.green, width: 1),
            left: BorderSide(color: Colors.green, width: 1),
            right: BorderSide(color: Colors.green, width: 1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButtonFormField(
            isExpanded: true,
            value: currentValue,
            onChanged: onChange,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                constraints: const BoxConstraints(maxHeight: 50),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none)),
            items: items),
      ),
    );
  }
}
