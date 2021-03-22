import 'package:flutter/material.dart';
import 'package:lex_os/routes/routes.dart';
import 'package:lex_os/screens/splash_screesn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEX-OS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: myRoute,
      initialRoute: SplashScreen.id,
    );
  }
}
