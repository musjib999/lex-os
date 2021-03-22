import 'package:flutter/material.dart';
import 'package:lex_os/routes/routes.dart';
import 'package:lex_os/screens/home.dart';
import 'package:lex_os/screens/splash_screesn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: myRoute,
      initialRoute: Home.id,
    );
  }
}
