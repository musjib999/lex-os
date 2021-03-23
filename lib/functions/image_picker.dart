import 'dart:io';

import 'package:image_picker/image_picker.dart';

File pickedImage;
Future<File> pickImage(ImageSource source) async {
  File _image;
  ImagePicker imagePicker = ImagePicker();
  try {
    PickedFile image = await imagePicker.getImage(source: source);
    if (image != null) {
      _image = File(image.path);
      print(_image.path);
    }
  } catch (e) {
    print('Error picking image ==> $e');
  }
  return _image;
}
