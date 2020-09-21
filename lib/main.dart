import 'package:flutter/material.dart';
import 'package:just_at_time/pages/home.dart';
import 'package:just_at_time/pages/geolocatorPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: new GeoListenPage(),
      home: new MyHomePage(),
    );
  }
}
