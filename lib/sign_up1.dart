import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './home1.dart';
import 'package:adobe_xd/page_link.dart';
import './login1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp1 extends StatelessWidget {
  SignUp1({
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
            Pin(size: 34.0, middle: 0.7049),
            child:
                // Adobe XD layer: 'Password' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_vgjocu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
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
            Pin(size: 34.0, middle: 0.6192),
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
            Pin(size: 48.0, end: 120.0),
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
                    alignment: Alignment(0.023, 0.0),
                    child: SizedBox(
                      width: 65.0,
                      height: 16.0,
                      child: Text(
                        'CONFIRM',
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
          Pinned.fromPins(
            Pin(size: 162.0, middle: 0.5),
            Pin(size: 16.0, end: 79.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: NaN,
                  pageBuilder: () => Login1(),
                ),
              ],
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xff2aaae2),
                  height: 1.5714285714285714,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 52.0, end: 51.0),
            Pin(size: 34.0, middle: 0.5334),
            child:
                // Adobe XD layer: 'Name' (group)
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
                  Pin(size: 60.0, start: 36.0),
                  Pin(size: 16.0, start: 0.0),
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff222222),
                    ),
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 16.0,
                    height: 16.0,
                    child:
                        // Adobe XD layer: 'Icon' (shape)
                        SvgPicture.string(
                      _svg_un2c1o,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(),
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

const String _svg_vgjocu =
    '<svg viewBox="40.0 309.0 327.0 1.0" ><path transform="translate(40.0, 309.0)" d="M 0 0 L 327 0 L 327 1 L 0 1 L 0 0 Z" fill="#7ac2ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a3vn6 =
    '<svg viewBox="40.0 239.0 327.0 1.0" ><path transform="translate(40.0, 239.0)" d="M 0 0 L 327 0 L 327 1 L 0 1 L 0 0 Z" fill="#7ac2ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_un2c1o =
    '<svg viewBox="40.0 136.0 16.0 16.0" ><path transform="translate(6160.0, 16226.0)" d="M -6120 -16073.9990234375 L -6120 -16075.998046875 C -6120 -16078.19921875 -6116.3984375 -16080 -6112.0009765625 -16080 C -6107.59912109375 -16080 -6104.00146484375 -16078.19921875 -6104.00146484375 -16075.998046875 L -6104.00146484375 -16073.9990234375 L -6120 -16073.9990234375 Z M -6115.99853515625 -16086 C -6115.99853515625 -16088.208984375 -6114.20947265625 -16089.998046875 -6112.0009765625 -16089.998046875 C -6109.7919921875 -16089.998046875 -6107.9990234375 -16088.208984375 -6107.9990234375 -16086 C -6107.9990234375 -16083.7919921875 -6109.7919921875 -16081.9990234375 -6112.0009765625 -16081.9990234375 C -6114.20947265625 -16081.9990234375 -6115.99853515625 -16083.7919921875 -6115.99853515625 -16086 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
