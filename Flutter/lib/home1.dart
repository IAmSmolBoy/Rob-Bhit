import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './roee_icon.dart';
import './health_icon.dart';
import './sustainability_icon.dart';
import './settings.dart';
import 'package:adobe_xd/page_link.dart';
import './roee.dart';
import './alarm_icon.dart';
import './fault_alarms.dart';
import './green_screen.dart';
import './health.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home1 extends StatelessWidget {
  Home1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 186.0, middle: 0.5879),
            child:
                // Adobe XD layer: 'song' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'avatar' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d000000),
                        offset: Offset(0, 10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 120.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'avatar' (shape)
                      SvgPicture.string(
                    _svg_zvie,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 84.0, start: 16.0),
                  Pin(size: 16.0, middle: 0.8059),
                  child: Text(
                    'Fault Alarms',
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
                  Pin(size: 216.0, start: 16.0),
                  Pin(size: 11.0, end: 18.0),
                  child: Text(
                    'Be notified of current fault alarms being triggered',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xff9e9e9e),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 41.0, end: 10.0),
                  Pin(size: 38.9, end: 13.0),
                  child:
                      // Adobe XD layer: 'Optimisation Icon' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Alarm Icon' (shape)
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 186.0, start: 120.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child:
                        // Adobe XD layer: 'avatar' (shape)
                        SvgPicture.string(
                  _svg_kiyn77,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 120.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, start: 16.0),
                  Pin(size: 16.0, middle: 0.8059),
                  child: Text(
                    'ROEE',
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
                  Pin(size: 174.0, start: 16.0),
                  Pin(size: 11.0, end: 18.0),
                  child: Text(
                    'Robot Overall Equipment Effectiveness',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xff9e9e9e),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.0, end: 12.0),
                  Pin(size: 43.0, end: 11.0),
                  child:
                      // Adobe XD layer: 'ROEE Icon' (component)
                      ROEEIcon(),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 186.0, middle: 0.3567),
            child: Stack(
              children: <Widget>[
                // Adobe XD layer: 'avatar' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d000000),
                        offset: Offset(0, 10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 120.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'avatar' (shape)
                      SvgPicture.string(
                    _svg_n96aey,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.0, start: 16.0),
                  Pin(size: 16.0, middle: 0.8059),
                  child: Text(
                    'Health',
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
                  Pin(size: 133.0, start: 16.0),
                  Pin(size: 11.0, end: 18.0),
                  child: Text(
                    'Monitor your machine\'s health',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xff9e9e9e),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.0, end: 10.0),
                  Pin(size: 24.1, end: 21.0),
                  child:
                      // Adobe XD layer: 'Health Icon' (component)
                      HealthIcon(),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 59.0, end: 59.0),
            Pin(size: 197.0, end: 162.0),
            child: Stack(
              children: <Widget>[
                // Adobe XD layer: 'avatar' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d000000),
                        offset: Offset(0, 10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 120.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, start: 16.0),
                  Pin(size: 16.0, middle: 0.7569),
                  child: Text(
                    'Green',
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
                  Pin(size: 177.0, start: 16.0),
                  Pin(size: 22.0, end: 18.0),
                  child: Text(
                    'Monitor your carbon footprint to improve\nsustainability',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xff9e9e9e),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 36.9, end: 11.0),
                  Pin(size: 43.0, end: 18.5),
                  child:
                      // Adobe XD layer: 'Sustainability Icon' (component)
                      SustainabilityIcon(),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 98.0, start: 0.0),
            child: Stack(
              children: <Widget>[
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
                  Pin(startFraction: 0.1361, endFraction: 0.7104),
                  Pin(size: 32.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Hi Claire,' (text)
                      Text(
                    'Home',
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
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 120.0, middle: 0.7936),
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
                Pinned.fromPins(
                  Pin(size: 19.0, start: 35.0),
                  Pin(size: 31.0, middle: 0.6965),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        duration: NaN,
                        pageBuilder: () => ROEE(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 19.0, start: 0.0),
                          child:
                              // Adobe XD layer: 'ROEE Icon' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(''),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 1.0, end: 1.0),
                          Pin(size: 10.0, end: 0.0),
                          child: Text(
                            'ROEE',
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
                Align(
                  alignment: Alignment(0.482, 0.401),
                  child: SizedBox(
                    width: 20.0,
                    height: 30.0,
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          duration: NaN,
                          pageBuilder: () => FaultAlarms(),
                        ),
                      ],
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
        ],
      ),
    );
  }
}

const String _svg_zvie =
    '<svg viewBox="0.0 0.0 312.0 120.0" ><path  d="M 0 0 L 312 0 L 312 120 L 0 120 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kiyn77 =
    '<svg viewBox="59.0 98.0 312.0 186.0" ><path transform="translate(59.0, 98.0)" d="M 0 0 L 312 0 L 312 186 L 0 186 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n96aey =
    '<svg viewBox="59.0 319.0 312.0 120.0" ><path transform="translate(59.0, 319.0)" d="M 0 0 L 312 0 L 312 120 L 0 120 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o9kbam =
    '<svg viewBox="0.0 855.0 430.0 77.0" ><path transform="translate(0.0, 854.98)" d="M 56.74769973754883 77.02020263671875 C 56.17734527587891 77.02020263671875 55.6075553894043 77.01351165771484 55.04129028320312 77.00040435791016 L 0 77.00040435791016 L 0 15.00030040740967 C 0 6.715800285339355 6.715800285339355 0 15.00030040740967 0 L 70.510498046875 0 L 70.510498046875 0.1467000097036362 L 150.506103515625 0.1467000097036362 C 150.506103515625 0.1467000097036362 156.3993072509766 -0.4446000158786774 162.8793029785156 2.59470009803772 C 169.3592987060547 5.634900093078613 172.8899993896484 12.30660057067871 172.8899993896484 12.30660057067871 C 172.8899993896484 12.30660057067871 188.3205108642578 36.60480117797852 217.0413055419922 36.43830108642578 C 249.0669097900391 36.20610046386719 262.5632934570312 12.34530067443848 262.5632934570312 12.34530067443848 C 262.5632934570312 12.34530067443848 266.8536071777344 5.163300037384033 270.9027099609375 2.59470009803772 C 274.9508972167969 0.02610000036656857 278.2863159179688 0.1467000097036362 285.1416015625 0.1467000097036362 L 359.4888000488281 0.1467000097036362 L 359.4888000488281 0 L 415.9998168945312 0 C 421.8954772949219 0 426.9395141601562 3.643638610839844 429.0028991699219 8.802803039550781 C 429.6477355957031 10.19152545928955 429.9992980957031 11.68927192687988 429.9992980957031 13.25069999694824 L 429.9992980957031 14.00040054321289 L 429.9992980957031 77.00040435791016 L 375.4934997558594 77.00040435791016 C 374.92724609375 77.01351165771484 374.3574523925781 77.02020263671875 373.787109375 77.02020263671875 L 56.74769973754883 77.02020263671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
