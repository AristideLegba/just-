// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:location/location.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     // : implement initState
//     super.initState();
//     location.onLocationChanged().listen((value) {
//       setState(() {
//         currentLocation = value;
//       });
//     });
//   }
//   Map<String, double> currentLocation;
//   var location = new Location();
//   Map<String, double> userLocation;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("data"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             userLocation == null
//                 ? CircularProgressIndicator()
//                 : Text("Location:" +
//                     userLocation["latitude"].toString() +
//                     " " +
//                     userLocation["longitude"].toString()),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: RaisedButton(
//                 onPressed: () {
//                   _getLocation().then((value) {
//                     setState(() {
//                       userLocation = value;
//                     });
//                   });
//                 },
//                 color: Colors.blue,
//                 child: Text(
//                   "Get Location",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<Map<String, double>> _getLocation() async {
//     var currentLocation = <String, double>{};
//     try {
//       currentLocation = await location.getLocation();
//     } catch (e) {
//       currentLocation = null;
//     }
//     return currentLocation;
//   }
// }
