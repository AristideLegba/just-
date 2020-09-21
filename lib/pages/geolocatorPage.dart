// import 'package:flutter/material.dart';
// // import 'package:geolocator/geolocator.dart';
// import 'dart:async';

// class GeoListenPage extends StatefulWidget {
//   @override
//   _GeoListenPageState createState() => _GeoListenPageState();
// }

// class _GeoListenPageState extends State<GeoListenPage> {
//   Geolocator geolocator = Geolocator();

//   Placemark place;
//   Position userLocation;

//   @override
//   void initState() {
//     super.initState();
//     _getLocation().then((position) {
//       userLocation = position;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Column(
//               children: [
//                 userLocation == null
//                     ? CircularProgressIndicator()
//                     : Text("Location:" +
//                         userLocation.latitude.toString() +
//                         " " +
//                         userLocation.longitude.toString()),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: RaisedButton(
//                     onPressed: () {
//                       _getLocation().then((value) {
//                         setState(() {
//                           userLocation = value;
//                         });
//                       });
//                     },
//                     color: Colors.blue,
//                     child: Text(
//                       "Get Location",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 place == null
//                     ? CircularProgressIndicator()
//                     : Text("Location:" + place.toString()),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: RaisedButton(
//                     onPressed: () {
//                       _getPlaceFromCoord().then((value) {
//                         setState(() {
//                           place = value;
//                         });
//                       });
//                     },
//                     color: Colors.blue,
//                     child: Text(
//                       "Get place mark",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<Position> _getLocation() async {
//     var currentLocation;
//     try {
//       currentLocation = await geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.best);
//     } catch (e) {
//       currentLocation = null;
//     }
//     return currentLocation;
//   }

//   Future<Placemark> _getPlaceFromCoord() async {
//     var placemark;
//     try {
//       Position position = await _getLocation();
//       List<Placemark> placemark = await geolocator.placemarkFromCoordinates(
//           position.latitude, position.longitude);
//       print(placemark);
//     } catch (e) {
//       print(e);
//       placemark = null;
//     }
//     return placemark;
//   }
// }
