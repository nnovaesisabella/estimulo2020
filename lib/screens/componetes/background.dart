import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/topbol.png",
            width: 161,
          ),
        ),
        Positioned(
          bottom: -40,
          left: -20,
          child: Image.asset(
            "assets/images/ladoesq.png",
            width: 161,
          ),
        ),
        Positioned(
          bottom: -20,
          right: -10,
          child: Image.asset(
            "assets/images/ladodir.png",
            width: 161,
          ),
        ),
        child,
      ]),
    );
  }
}
