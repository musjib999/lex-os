import 'package:flutter/material.dart';
import 'package:lex_os/screens/home.dart';
import 'package:lex_os/screens/splash_screesn.dart';

Map<String, WidgetBuilder> myRoute = {
  Home.id: (context) => Home(),
  SplashScreen.id: (context) => SplashScreen(),
};
