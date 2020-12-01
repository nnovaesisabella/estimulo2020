import 'package:estimulo2020/screens/componetes/homelogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void initState() {
    var d = Duration(seconds: 3);
    // Estimated time to start another page
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(context,
     CupertinoPageRoute(builder: (context) {
        return HomeLogin();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          (Image.asset(
            "assets/images/logo.png",
            width: 120,
            height: 120,
          )),
          Container(
            child: Text(
              'Value',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: 'AbrilFatface-Regular'),
            ),
          )
        ],
      ),
    ));
  }
}
