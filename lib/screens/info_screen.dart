import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lex_os/functions/get_location.dart';
import 'package:lex_os/screens/home.dart';
import 'package:lex_os/utils/lat_lng_object.dart';
import 'package:lex_os/utils/texts.dart';

class InfoScreen extends StatefulWidget {
  static const String id = 'InfoScreen';
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  GetStringFromFile getStringFromFile = GetStringFromFile();
  String information = '';
  @override
  void initState() {
    getStringFromFile.loadAsset(context, 'lex_os_information.txt').then((text) {
      setState(() {
        information = text;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text(
                  'L',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3498db),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          'Lexington Onboarding System',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          information,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15),
                        ArgonButton(
                          height: 50,
                          width: 350,
                          borderRadius: 5.0,
                          color: Color(0xff3498db),
                          elevation: 1,
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          loader: Container(
                            padding: EdgeInsets.all(10),
                            child: SpinKitRotatingCircle(
                              color: Colors.white,
                              // size: loaderWidth ,
                            ),
                          ),
                          onTap: (startLoading, stopLoading, btnState) {
                            if (btnState == ButtonState.Idle) {
                              startLoading();
                              print('Loading');
                              determinePosition().then((Position position) {
                                print('${position.latitude} here');
                                btnState = ButtonState.Busy;
                                LatLng currentPos = LatLng(
                                  latitude: position.latitude,
                                  longitude: position.longitude,
                                );
                                if (currentPos != null) {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Home(position: position);
                                  })).then((value) {
                                    stopLoading();
                                    btnState = ButtonState.Idle;
                                  });
                                } else {
                                  print('error getting GPS');
                                }
                              });
                            } else {
                              print('Wait Position is loading');
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
