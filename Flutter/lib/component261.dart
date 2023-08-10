import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Component261 extends StatelessWidget {
  Component261({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(),
        Pinned.fromPins(
          Pin(size: 219.0, end: 8.0),
          Pin(size: 33.0, middle: 0.7832),
          child: Text(
            'Robo-Bit for Robots',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 25,
              color: const Color(0xff2aaae2),
              height: 1,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
      ],
    );
  }
}
