import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './home1.dart';
import 'package:adobe_xd/page_link.dart';
import './alarm_icon.dart';
import './green_screen.dart';
import './health.dart';
import './roee_icon.dart';
import './settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ROEE extends StatelessWidget {
  ROEE({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 34.0, end: 21.0),
            Pin(size: 450.0, end: 138.0),
            child:
                // Adobe XD layer: 'Charts' (group)
                Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0.154, -1.0),
                  child: SizedBox(
                    width: 174.0,
                    height: 16.0,
                    child:
                        // Adobe XD layer: 'info' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 61.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 37.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xff2aaae2),
                                    height: 1.7142857142857142,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  softWrap: false,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 16.0, start: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2aaae2),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 86.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 62.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Text(
                                  'Yesterday',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xff7ac2ff),
                                    height: 1.7142857142857142,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  softWrap: false,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 16.0, start: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff7ac2ff),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 39.0, 0.0, 0.0),
                  child:
                      // Adobe XD layer: 'stats' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 301.0, start: 29.0),
                        child:
                            // Adobe XD layer: 'grid' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, start: 0.0),
                              child: Container(
                                color: const Color(0xfff1f9ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, middle: 0.2),
                              child: Container(
                                color: const Color(0xfff1f9ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, middle: 0.4),
                              child: Container(
                                color: const Color(0xfff1f9ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, middle: 0.6),
                              child: Container(
                                color: const Color(0xfff1f9ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, middle: 0.8),
                              child: Container(
                                color: const Color(0xfff1f9ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, end: 0.0),
                              child: Container(
                                color: const Color(0xfff1f9ff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 17.0, start: 8.0),
                        Pin(size: 311.0, start: 0.0),
                        child:
                            // Adobe XD layer: 'info' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 11.0, start: 0.0),
                              child: Text(
                                '500',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 11.0, middle: 0.2),
                              child: Text(
                                '400',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 11.0, middle: 0.4),
                              child: Text(
                                '300',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 11.0, middle: 0.6),
                              child: Text(
                                '200',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 11.0, middle: 0.8),
                              child: Text(
                                '100',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                softWrap: false,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 6.0,
                                height: 11.0,
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 10,
                                    color: const Color(0xff222222),
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 56.0, end: 47.0),
                        Pin(size: 194.0, middle: 0.6267),
                        child:
                            // Adobe XD layer: 'stats' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 16.0, start: 16.0),
                              Pin(size: 82.0, end: 0.0),
                              child:
                                  // Adobe XD layer: '1' (shape)
                                  Container(
                                color: const Color(0xff7ac2ff),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child:
                                  // Adobe XD layer: '1' (shape)
                                  Container(
                                width: 16.0,
                                height: 73.0,
                                color: const Color(0xff2aaae2),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.5, 1.0),
                              child:
                                  // Adobe XD layer: '2' (shape)
                                  Container(
                                width: 16.0,
                                height: 37.0,
                                color: const Color(0xff7ac2ff),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.625, 1.0),
                              child:
                                  // Adobe XD layer: '2' (shape)
                                  Container(
                                width: 16.0,
                                height: 45.0,
                                color: const Color(0xff2aaae2),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.125, 1.0),
                              child:
                                  // Adobe XD layer: '3' (shape)
                                  Container(
                                width: 16.0,
                                height: 128.0,
                                color: const Color(0xff7ac2ff),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.25, 1.0),
                              child:
                                  // Adobe XD layer: '3' (shape)
                                  Container(
                                width: 16.0,
                                height: 139.0,
                                color: const Color(0xff2aaae2),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.25, 1.0),
                              child:
                                  // Adobe XD layer: '4' (shape)
                                  Container(
                                width: 16.0,
                                height: 73.0,
                                color: const Color(0xff7ac2ff),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.125, 1.0),
                              child:
                                  // Adobe XD layer: '4' (shape)
                                  Container(
                                width: 16.0,
                                height: 47.0,
                                color: const Color(0xff2aaae2),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child:
                                  // Adobe XD layer: '5' (shape)
                                  Container(
                                width: 16.0,
                                height: 105.0,
                                color: const Color(0xff7ac2ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 16.0, end: 16.0),
                              Pin(size: 128.0, end: 0.0),
                              child:
                                  // Adobe XD layer: '5' (shape)
                                  Container(
                                color: const Color(0xff2aaae2),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.625, 1.0),
                              child:
                                  // Adobe XD layer: '6' (shape)
                                  Container(
                                width: 16.0,
                                height: 164.0,
                                color: const Color(0xff7ac2ff),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 16.0, middle: 0.75),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: '6' (shape)
                                  Container(
                                color: const Color(0xff2aaae2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 64.0, middle: 0.1302),
                        Pin(size: 11.0, end: 26.5),
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Text(
                            'PROGRAM 1',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 64.0, middle: 0.4389),
                        Pin(size: 11.0, end: 27.5),
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Text(
                            'PROGRAM 3',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 64.0, end: 30.5),
                        Pin(size: 11.0, end: 26.5),
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Text(
                            'PROGRAM 6',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 64.0, middle: 0.5932),
                        Pin(size: 11.0, end: 27.5),
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Text(
                            'PROGRAM 4',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 64.0, middle: 0.7476),
                        Pin(size: 11.0, end: 27.5),
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Text(
                            'PROGRAM 5',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 64.0, middle: 0.2846),
                        Pin(size: 11.0, end: 26.5),
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Text(
                            'PROGRAM 2',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 120.0, middle: 0.7475),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 77.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_o9kbam,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        duration: NaN,
                        pageBuilder: () => Home1(),
                      ),
                    ],
                    child: Container(
                      width: 64.0,
                      height: 63.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: [
                            const Color(0xff7ac2ff),
                            const Color(0xff2aaae2)
                          ],
                          stops: [0.0, 1.0],
                        ),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 4.0, color: const Color(0xffffffff)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.0, start: 36.0),
                  Pin(size: 10.0, middle: 0.7544),
                  child: Text(
                    'ROEE',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular A',
                      fontSize: 7,
                      color: const Color(0xffbbc7db),
                      fontWeight: FontWeight.w700,
                      height: 0.7142857142857143,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment(0.482, 0.401),
                  child: SizedBox(
                    width: 20.0,
                    height: 30.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 19.0, start: 0.0),
                          child:
                              // Adobe XD layer: 'Alarm Icon' (component)
                              AlarmIcon(),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.5, end: 0.5),
                          Pin(size: 10.0, end: 0.0),
                          child: Text(
                            'Faults',
                            style: TextStyle(
                              fontFamily: 'Euclid Circular A',
                              fontSize: 7,
                              color: const Color(0xffbbc7db),
                              fontWeight: FontWeight.w700,
                              height: 0.7142857142857143,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 37.0),
                  Pin(size: 31.0, middle: 0.6965),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        duration: NaN,
                        pageBuilder: () => GreenScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 10.0, end: 0.0),
                          child: Text(
                            'Green',
                            style: TextStyle(
                              fontFamily: 'Euclid Circular A',
                              fontSize: 7,
                              color: const Color(0xffbbc7db),
                              fontWeight: FontWeight.w700,
                              height: 0.7142857142857143,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(),
                Align(
                  alignment: Alignment(-0.487, 0.42),
                  child: SizedBox(
                    width: 22.0,
                    height: 27.0,
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          duration: NaN,
                          pageBuilder: () => Health(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 10.0, end: 0.0),
                            child: Text(
                              'Health',
                              style: TextStyle(
                                fontFamily: 'Euclid Circular A',
                                fontSize: 7,
                                color: const Color(0xffbbc7db),
                                fontWeight: FontWeight.w700,
                                height: 0.7142857142857143,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              softWrap: false,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.0, start: 35.0),
            Pin(size: 19.0, middle: 0.7361),
            child:
                // Adobe XD layer: 'ROEE Icon' (component)
                ROEEIcon(),
          ),
          Pinned.fromPins(
            Pin(start: 22.0, end: 23.0),
            Pin(size: 363.0, start: 153.0),
            child:
                // Adobe XD layer: 'Charts' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 41.0, 10.0, 20.0),
                  child:
                      // Adobe XD layer: 'grid' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.2005),
                        Pin(start: 0.0, end: 1.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.4011),
                        Pin(start: 0.0, end: 1.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.5989),
                        Pin(start: 0.0, end: 1.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.7995),
                        Pin(start: 0.0, end: 1.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 0.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.1993),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.3987),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.598),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.7973),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: 1.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, end: 1.0),
                        Pin(start: 1.0, end: 0.0),
                        child: Container(
                          color: const Color(0x427ac2ff),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 67.0, start: 8.0),
                  Pin(start: 0.0, end: 26.0),
                  child:
                      // Adobe XD layer: 'vertical info' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 11.0, start: 0.0),
                        Pin(size: 11.0, start: 26.0),
                        child: Text(
                          '35',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff222222),
                          ),
                          softWrap: false,
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.0, -0.472),
                        child: SizedBox(
                          width: 11.0,
                          height: 11.0,
                          child: Text(
                            '20',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.0, -0.104),
                        child: SizedBox(
                          width: 11.0,
                          height: 11.0,
                          child: Text(
                            '15',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.0, 0.264),
                        child: SizedBox(
                          width: 11.0,
                          height: 11.0,
                          child: Text(
                            '10',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1.0, 0.632),
                        child: SizedBox(
                          width: 6.0,
                          height: 11.0,
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 6.0,
                          height: 11.0,
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 11.0, start: 0.0),
                        child: Text(
                          'Good Products',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff2aaae2),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 323.0,
                    height: 11.0,
                    child:
                        // Adobe XD layer: 'horizontal info' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 26.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            '01/01',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 26.0, middle: 0.2559),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            '10/01',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 26.0, middle: 0.5017),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            '20/01',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 26.0, middle: 0.7576),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            '30/01',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff222222),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 22.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            'Date',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff2aaae2),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 30.0, start: 22.0),
            Pin(size: 16.0, start: 120.0),
            child: Text(
              'OEE',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff2aaae2),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(-0.55, -0.577),
            child: SizedBox(
              width: 1.0,
              height: 1.0,
              child: SvgPicture.string(
                _svg_wgakda,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.455, -0.577),
            child: SizedBox(
              width: 76.0,
              height: 1.0,
              child: SvgPicture.string(
                _svg_vgjvd,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.391, -0.477),
            child: SizedBox(
              width: 74.0,
              height: 1.0,
              child: SvgPicture.string(
                _svg_rni6ev,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 151.0, start: 34.0),
            Pin(size: 16.0, middle: 0.4903),
            child: Text(
              'Total Power Usage (W)',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff2aaae2),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 98.0, start: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 28.9, start: 26.1),
                  Pin(size: 19.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Optimisation Icon' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Optimisation Icon' (shape)
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21.0),
                      bottomLeft: Radius.circular(21.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.1361, endFraction: 0.715),
                  Pin(size: 32.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Hi Claire,' (text)
                      Text(
                    'ROEE',
                    style: TextStyle(
                      fontFamily: 'NunitoSans-Bold',
                      fontSize: 24,
                      color: const Color(0xff2aaae2),
                      height: 1.0833333333333333,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Container(),
                Pinned.fromPins(
                  Pin(size: 19.0, start: 31.0),
                  Pin(size: 19.0, middle: 0.5063),
                  child:
                      // Adobe XD layer: 'ROEE Icon' (component)
                      ROEEIcon(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.002, 0.147),
            child: SizedBox(
              width: 19.0,
              height: 19.0,
              child:
                  // Adobe XD layer: 'ROEE Icon' (component)
                  ROEEIcon(),
            ),
          ),
          Align(
            alignment: Alignment(-0.031, -0.555),
            child: SizedBox(
              width: 74.0,
              height: 60.0,
              child: SvgPicture.string(
                _svg_i4to,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.391, -0.477),
            child: SizedBox(
              width: 74.0,
              height: 1.0,
              child: SvgPicture.string(
                _svg_rni6ev,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.389, -0.477),
            child: SizedBox(
              width: 75.0,
              height: 1.0,
              child: SvgPicture.string(
                _svg_sy6mrb,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 74.0, end: 34.5),
            Pin(size: 60.0, middle: 0.2747),
            child: SvgPicture.string(
              _svg_sv1qsf,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_o9kbam =
    '<svg viewBox="0.0 855.0 430.0 77.0" ><path transform="translate(0.0, 854.98)" d="M 56.74769973754883 77.02020263671875 C 56.17734527587891 77.02020263671875 55.6075553894043 77.01351165771484 55.04129028320312 77.00040435791016 L 0 77.00040435791016 L 0 15.00030040740967 C 0 6.715800285339355 6.715800285339355 0 15.00030040740967 0 L 70.510498046875 0 L 70.510498046875 0.1467000097036362 L 150.506103515625 0.1467000097036362 C 150.506103515625 0.1467000097036362 156.3993072509766 -0.4446000158786774 162.8793029785156 2.59470009803772 C 169.3592987060547 5.634900093078613 172.8899993896484 12.30660057067871 172.8899993896484 12.30660057067871 C 172.8899993896484 12.30660057067871 188.3205108642578 36.60480117797852 217.0413055419922 36.43830108642578 C 249.0669097900391 36.20610046386719 262.5632934570312 12.34530067443848 262.5632934570312 12.34530067443848 C 262.5632934570312 12.34530067443848 266.8536071777344 5.163300037384033 270.9027099609375 2.59470009803772 C 274.9508972167969 0.02610000036656857 278.2863159179688 0.1467000097036362 285.1416015625 0.1467000097036362 L 359.4888000488281 0.1467000097036362 L 359.4888000488281 0 L 415.9998168945312 0 C 421.8954772949219 0 426.9395141601562 3.643638610839844 429.0028991699219 8.802803039550781 C 429.6477355957031 10.19152545928955 429.9992980957031 11.68927192687988 429.9992980957031 13.25069999694824 L 429.9992980957031 14.00040054321289 L 429.9992980957031 77.00040435791016 L 375.4934997558594 77.00040435791016 C 374.92724609375 77.01351165771484 374.3574523925781 77.02020263671875 373.787109375 77.02020263671875 L 56.74769973754883 77.02020263671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wgakda =
    '<svg viewBox="96.5 254.5 1.0 1.0" ><path transform="translate(96.5, 254.5)" d="M 0 0" fill="none" stroke="#2aaae2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vgjvd =
    '<svg viewBox="96.5 254.5 76.0 1.0" ><path transform="translate(96.5, 254.5)" d="M 0 0 L 76 0" fill="none" stroke="#2aaae2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rni6ev =
    '<svg viewBox="247.6 315.0 73.9 1.0" ><path transform="translate(246.5, 253.5)" d="M 1.072509765625 61.48291015625 L 75.0146484375 61.48291015625 L 75.0146484375 61.48291015625" fill="none" stroke="#2aaae2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i4to =
    '<svg viewBox="172.5 254.5 74.0 60.0" ><path transform="translate(172.5, 254.5)" d="M 0 0 L 74 60" fill="none" stroke="#2aaae2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sy6mrb =
    '<svg viewBox="246.5 315.0 75.0 1.0" ><path transform="translate(245.43, 253.5)" d="M 1.072509765625 61.48291015625 L 76.08716583251953 61.48291015625 L 76.08716583251953 61.48291015625" fill="none" stroke="#2aaae2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sv1qsf =
    '<svg viewBox="321.5 314.5 74.0 60.0" ><path transform="translate(321.51, 314.5)" d="M 0 0 L 74 60" fill="none" stroke="#2aaae2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
