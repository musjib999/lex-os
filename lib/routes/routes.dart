import 'package:flutter/material.dart';
import 'package:lex_os/screens/home.dart';
import 'package:lex_os/splash_screen.dart';

Map<String, WidgetBuilder> myRoute = {
  Home.id: (context) => Home(),
  SplashScreen.id: (context) => SplashScreen(),
};
