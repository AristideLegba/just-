import 'package:flutter/material.dart';
import '../themes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // : implement initState
    super.initState();
  }

  Map<String, double> userLocation;

  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Just At Time"),
        backgroundColor: AppTheme.colorsPrimary,
      ),
      body: Center(
        child: Container(
          height: contextHeight * 0.8,
          width: contextWidth * 0.9,
          child: Column(
            children: [
              SizedBox(
                height: contextHeight * 0.3,
                width: contextWidth * 0.9,
                child: FlutterLogo(),
              ),
              SizedBox(
                height: contextHeight * 0.1,
                width: contextWidth * 0.9,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Se connecter",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: contextHeight * 0.05,
              ),
              SizedBox(
                height: contextHeight * 0.1,
                width: contextWidth * 0.9,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blue)),
                  onPressed: () {},
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
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
