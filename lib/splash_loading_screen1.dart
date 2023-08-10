import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './component261.dart';

class SplashLoadingScreen1 extends StatelessWidget {
  SplashLoadingScreen1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 259.0, middle: 0.2481),
            child: Component261(),
          ),
        ],
      ),
    );
  }
}
