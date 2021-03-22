import 'package:flutter/material.dart';

class GetStringFromFile {
  Future<String> loadAsset(BuildContext context, String path) async {
    String textFromFile =
        await DefaultAssetBundle.of(context).loadString('assets/$path');
    return textFromFile;
  }
}

String info =
    'The Lexington Onboarding System (LEX-OS) is used to capture user\'s information \n';
