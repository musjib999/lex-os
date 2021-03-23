import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lex_os/services/location.dart';

class Home extends StatefulWidget {
  static const String id = 'Home Screen';
  final Position position;

  const Home({Key key, this.position}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // static Location _location = Location();
  // double lat = _location.latitude;
  // double long = _location.longitude;
  @override
  void initState() {
    super.initState();
    // Location().getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.location_on),
                Text('Location'),
                SizedBox(
                  width: 8,
                ),
                MaterialButton(
                  // color: Colors.blue,
                  onPressed: () {
                    // _location.getCurrentLocation();
                  },
                  child: Text(
                    'Find Location',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: '${widget.position.longitude}',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8),
                  TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: '${widget.position.latitude}',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'NIN',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
