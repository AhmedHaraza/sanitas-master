// ignore_for_file: unnecessary_import, prefer_typing_uninitialized_variables

import "dart:io";
import "dart:typed_data";
import "package:flutter/foundation.dart";
import "package:image_picker/image_picker.dart";

File? filePath;
var imagePicker = ImagePicker();
String? base64;
Uint8List? imageByte;
var imageForNetwork;
uploadImage() async {
  try {
    final XFile? imgPicked =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (imgPicked != null) {
      filePath = File(imgPicked.path);
      imageByte = await imgPicked.readAsBytes();
      imageForNetwork = imgPicked.path;
    }
  } catch (e) {
    if (kDebugMode) {
      print('error is $e');
    }
  }
}
