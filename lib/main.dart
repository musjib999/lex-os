import 'package:flutter/material.dart';
import 'package:lex_os/routes/routes.dart';
import 'package:lex_os/splash_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEX-OS',
      theme: ThemeData(
        primaryColor: Color(0xff3498db),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.id,
      routes: myRoute,
    );
  }
}
