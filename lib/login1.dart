import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './home1.dart';
import 'package:adobe_xd/page_link.dart';
import './sign_up1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login1 extends StatelessWidget {
  Login1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 52.0, end: 51.0),
            Pin(size: 34.0, middle: 0.6147),
            child:
                // Adobe XD layer: 'Password' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: 0.0),
                  child: Container(
                    color: const Color(0xff7ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 59.0, start: 36.0),
                  Pin(size: 16.0, start: 0.0),
                  child: Text(
                    '●●●●●●●',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff222222),
                    ),
                    softWrap: false,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 52.0, end: 51.0),
            Pin(size: 34.0, middle: 0.5067),
            child:
                // Adobe XD layer: 'Email' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_a3vn6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 121.0, start: 35.0),
                  Pin(size: 16.0, start: 0.0),
                  child: Text(
                    'johndoe@mail.com',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff222222),
                    ),
                    softWrap: false,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 52.0, end: 51.0),
            Pin(size: 48.0, middle: 0.8145),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: NaN,
                  pageBuilder: () => Home1(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Container(),
                  Align(
                    alignment: Alignment(-0.004, 0.0),
                    child: SizedBox(
                      width: 44.0,
                      height: 16.0,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 14,
                          color: const Color(0xff2aaae2),
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 52.0, end: 51.0),
            Pin(size: 48.0, end: 66.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: NaN,
                  pageBuilder: () => SignUp1(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Container(),
                  Align(
                    alignment: Alignment(-0.004, 0.0),
                    child: SizedBox(
                      width: 58.0,
                      height: 16.0,
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 14,
                          color: const Color(0xffffffff),
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.007, 0.323),
            child: SizedBox(
              width: 148.0,
              height: 16.0,
              child: Text(
                'Forgot  your password?',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xff2699fb),
                  height: 1.5714285714285714,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.005, -0.616),
            child:
                // Adobe XD layer: 'Logo Icon' (shape)
                Container(
              width: 215.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_a3vn6 =
    '<svg viewBox="40.0 239.0 327.0 1.0" ><path transform="translate(40.0, 239.0)" d="M 0 0 L 327 0 L 327 1 L 0 1 L 0 0 Z" fill="#7ac2ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
