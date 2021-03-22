import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lex_os/screens/info_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => InfoScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text('Welcome', style: TextStyle(fontSize: 40)),
              SizedBox(height: 20),
              Text('NIMC'),
              SizedBox(height: 10),
              Text('LEX'),
              SizedBox(height: 20),
              Expanded(child: Container()),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff3498db),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(5),
                child: SpinKitRotatingCircle(
                  color: Colors.white,
                  // size: loaderWidth ,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please Wait...',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
