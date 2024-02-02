// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DefaultNameTextForm extends StatelessWidget {
  DefaultNameTextForm({super.key, required this.controller});
  TextEditingController controller = TextEditingController();

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
        child: TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
