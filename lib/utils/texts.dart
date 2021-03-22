import 'package:flutter/material.dart';

class GetStringFromFile {
  Future<String> loadAsset(BuildContext context, String path) async {
    String textFromFile =
        await DefaultAssetBundle.of(context).loadString('assets/$path');
    return textFromFile;
  }
}
