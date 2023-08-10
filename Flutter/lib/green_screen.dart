import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './home1.dart';
import 'package:adobe_xd/page_link.dart';
import './sustainability_icon.dart';
import './roee.dart';
import './health.dart';
import './alarm_icon.dart';
import './fault_alarms.dart';
import './settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GreenScreen extends StatelessWidget {
  GreenScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 28.0, end: 27.0),
            Pin(size: 350.0, end: 150.0),
            child:
                // Adobe XD layer: 'songs' (grid)
                SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 0,
                children: [
                  {
                    'text': 'Assembly Cell',
                    'text_0': '3.012345',
                    'text_1': '1',
                    'text_2': 'Articulated Robot 1',
                  },
                  {
                    'text': 'Unloading Cell',
                    'text_0': '5.038583',
                    'text_1': '2',
                    'text_2': 'Scara Robot',
                  },
                  {
                    'text': 'Machining Cell',
                    'text_0': '59.934885',
                    'text_1': '3',
                    'text_2': 'CNC Machine',
                  },
                  {
                    'text': 'Data 4',
                    'text_0': '1.20386',
                    'text_1': '4',
                    'text_2': 'Data details',
                  },
                  {
                    'text': 'Data 5',
                    'text_0': '2.0486',
                    'text_1': '5',
                    'text_2': 'Data details',
                  }
                ].map((itemData) {
                  final text = itemData['text']!;
                  final text_0 = itemData['text_0']!;
                  final text_1 = itemData['text_1']!;
                  final text_2 = itemData['text_2']!;
                  return SizedBox(
                    width: 375.0,
                    height: 70.0,
                    child:
                        // Adobe XD layer: 'songs' (group)
                        Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0xffffffff),
                        ),
                        Pinned.fromPins(
                          Pin(size: 96.0, start: 55.0),
                          Pin(size: 16.0, middle: 0.3333),
                          child: Text(
                            text,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 14,
                              color: const Color(0xff2db680),
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 67.0, end: 43.0),
                          Pin(size: 17.0, middle: 0.5283),
                          child: Text(
                            text_0,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 16,
                              color: const Color(0xff2db680),
                            ),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 7.0, start: 24.0),
                          Pin(size: 14.0, middle: 0.5179),
                          child: Text(
                            text_1,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 12,
                              color: const Color(0xff2db680),
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 85.0, start: 55.0),
                          Pin(size: 11.0, middle: 0.678),
                          child: Text(
                            text_2,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff9e9e9e),
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 1.0, end: 0.0),
                          child: Container(
                            color: const Color(0x42ffb9b5),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 120.0, end: 171.0),
            child: Stack(
              children: <Widget>[
                // Adobe XD layer: 'Navbar' (group)
                Stack(
                  children: <Widget>[
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
                                const Color(0xff8dff96),
                                const Color(0xff2db680)
                              ],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
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
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 77.0, end: 0.0),
                      child: SvgPicture.string(
                        _svg_soaxz6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 16.3, end: 39.8),
                  Pin(size: 19.0, middle: 0.6139),
                  child:
                      // Adobe XD layer: 'Sustainability Icon' (component)
                      SustainabilityIcon(),
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
                Pinned.fromPins(
                  Pin(size: 20.0, end: 37.0),
                  Pin(size: 10.0, middle: 0.7544),
                  child: Text(
                    'Green',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular A',
                      fontSize: 7,
                      color: const Color(0xff2db680),
                      fontWeight: FontWeight.w700,
                      height: 0.7142857142857143,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
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
                Align(
                  alignment: Alignment(0.482, 0.423),
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 269.0, middle: 0.5031),
            Pin(size: 269.0, start: 136.0),
            child:
                // Adobe XD layer: 'Charts + Info' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 21.0, 29.0, 8.0),
                  child:
                      // Adobe XD layer: 'Charts' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 116.2, start: 3.8),
                        Pin(size: 120.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_gwf4br,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 86.2, end: 33.8),
                        Pin(size: 118.0, end: 2.0),
                        child: SvgPicture.string(
                          _svg_dib7z,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 117.3, end: 2.7),
                        Pin(size: 87.2, start: 32.8),
                        child: SvgPicture.string(
                          _svg_rzt0xh,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.524, -0.997),
                        child: SizedBox(
                          width: 83.0,
                          height: 120.0,
                          child: SvgPicture.string(
                            _svg_y6txx,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(1.0, 0.443),
                        child: SizedBox(
                          width: 120.0,
                          height: 109.0,
                          child: SvgPicture.string(
                            _svg_wcmjr4,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 142.0,
                          height: 150.0,
                          child: SvgPicture.string(
                            _svg_l3a86,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 28.0, start: 12.0),
                  Pin(size: 16.0, start: 22.0),
                  child: Text(
                    '23%',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff9e9e9e),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment(0.369, -1.0),
                  child: SizedBox(
                    width: 28.0,
                    height: 16.0,
                    child: Text(
                      '18%',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, end: 10.0),
                  Pin(size: 16.0, middle: 0.2332),
                  child: Text(
                    '9%',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff9e9e9e),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment(1.0, 0.344),
                  child: SizedBox(
                    width: 28.0,
                    height: 16.0,
                    child: Text(
                      '15%',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.518, 1.0),
                  child: SizedBox(
                    width: 20.0,
                    height: 16.0,
                    child: Text(
                      '5%',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 28.0, start: 1.0),
                  Pin(size: 16.0, end: 6.0),
                  child: Text(
                    '30%',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff9e9e9e),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 114.0, start: 37.0),
            Pin(size: 16.0, start: 120.0),
            child: Text(
              'Carbon Footprint',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff2db680),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.218, -0.168),
            child: SizedBox(
              width: 251.0,
              height: 80.0,
              child:
                  // Adobe XD layer: 'Key' (group)
                  Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      color: const Color(0xfff7b5fc),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 37.0, start: 24.0),
                    Pin(size: 11.0, end: 2.0),
                    child: Text(
                      'Coolant',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      color: const Color(0xffff483e),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 43.0, start: 24.0),
                    Pin(size: 11.0, start: 3.0),
                    child: Text(
                      'Materials',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      color: const Color(0xff7ac2ff),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 34.0, start: 24.0),
                    Pin(size: 11.0, middle: 0.5072),
                    child: Text(
                      'Energy',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.277, 1.0),
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      color: const Color(0xff8dff96),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 77.0, end: 0.0),
                    Pin(size: 11.0, end: 2.0),
                    child: Text(
                      'Compressed Air',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.277, -1.0),
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      color: const Color(0xffffd596),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 40.0, end: 37.0),
                    Pin(size: 11.0, start: 3.0),
                    child: Text(
                      'Lube Oil',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.277, 0.0),
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      color: const Color(0xfff9fe71),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 41.0, end: 36.0),
                    Pin(size: 11.0, middle: 0.5072),
                    child: Text(
                      'Nitrogen',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 197.0, start: 37.0),
            Pin(size: 16.0, middle: 0.5417),
            child: Text(
              'Greenhouse Gas Emitted (kg)',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff2db680),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 16.0, end: 30.0),
            Pin(size: 22.0, middle: 0.542),
            child:
                // Adobe XD layer: 'ic_loop_24px' (shape)
                SvgPicture.string(
              _svg_bjokkg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 98.0, start: 0.0),
            child: Container(
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
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.1361, endFraction: 0.5197),
            Pin(size: 32.0, middle: 0.0297),
            child:
                // Adobe XD layer: 'Hi Claire,' (text)
                Text(
              'Green Screen',
              style: TextStyle(
                fontFamily: 'NunitoSans-Bold',
                fontSize: 24,
                color: const Color(0xff2db680),
                height: 1.0833333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 21.0, start: 30.4),
            Pin(size: 24.5, start: 36.8),
            child:
                // Adobe XD layer: 'Sustainability Icon' (component)
                SustainabilityIcon(),
          ),
        ],
      ),
    );
  }
}

const String _svg_soaxz6 =
    '<svg viewBox="0.0 43.0 430.0 77.0" ><path transform="translate(0.0, 43.0)" d="M 56.74769973754883 77.02020263671875 C 56.17734527587891 77.02020263671875 55.6075553894043 77.01351165771484 55.04129028320312 77.00040435791016 L 0 77.00040435791016 L 0 15.00030040740967 C 0 6.715800285339355 6.715800285339355 0 15.00030040740967 0 L 70.510498046875 0 L 70.510498046875 0.1467000097036362 L 150.506103515625 0.1467000097036362 C 150.506103515625 0.1467000097036362 156.3993072509766 -0.4446000158786774 162.8793029785156 2.59470009803772 C 169.3592987060547 5.634900093078613 172.8899993896484 12.30660057067871 172.8899993896484 12.30660057067871 C 172.8899993896484 12.30660057067871 188.3205108642578 36.60480117797852 217.0413055419922 36.43830108642578 C 249.0669097900391 36.20610046386719 262.5632934570312 12.34530067443848 262.5632934570312 12.34530067443848 C 262.5632934570312 12.34530067443848 266.8536071777344 5.163300037384033 270.9027099609375 2.59470009803772 C 274.9508972167969 0.02610000036656857 278.2863159179688 0.1467000097036362 285.1416015625 0.1467000097036362 L 359.4888000488281 0.1467000097036362 L 359.4888000488281 0 L 415.9998168945312 0 C 421.8954772949219 0 426.9395141601562 3.643638610839844 429.0028991699219 8.802803039550781 C 429.6477355957031 10.19152545928955 429.9992980957031 11.68927192687988 429.9992980957031 13.25069999694824 L 429.9992980957031 14.00040054321289 L 429.9992980957031 77.00040435791016 L 375.4934997558594 77.00040435791016 C 374.92724609375 77.01351165771484 374.3574523925781 77.02020263671875 373.787109375 77.02020263671875 L 56.74769973754883 77.02020263671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gwf4br =
    '<svg viewBox="71.8 214.0 116.2 120.0" ><path transform="translate(68.0, 214.0)" d="M 120 120 L 120 0 C 64.09999847412109 0 17.20000076293945 38.20000076293945 3.799999952316284 89.80000305175781 L 120 120 Z" fill="#ff8680" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dib7z =
    '<svg viewBox="188.0 334.0 86.2 118.0" ><path transform="translate(68.0, 214.0)" d="M 141.8999938964844 238 C 166.8999938964844 233.3999938964844 189.1999969482422 221 206.1999969482422 203.5 L 120 120 L 141.8999938964844 238 Z" fill="#f7b5fc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rzt0xh =
    '<svg viewBox="188.0 246.8 117.3 87.2" ><path transform="translate(68.0, 214.0)" d="M 237.3000030517578 94.5 C 232.1000061035156 70.5 219.6999969482422 49.09999847412109 202.5 32.79999923706055 L 120 120 L 237.3000030517578 94.5 Z" fill="#f9fe71" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y6txx =
    '<svg viewBox="188.0 214.2 82.5 120.0" ><path transform="translate(68.0, 214.0)" d="M 120 0.2000000029802322 L 120 0.2000000029802322 L 120 120.1999969482422 L 202.5 33 C 181 12.69999980926514 151.8999938964844 0.2000000029802322 120 0.2000000029802322 Z" fill="#8dff96" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wcmjr4 =
    '<svg viewBox="188.0 308.5 120.0 109.0" ><path transform="translate(68.0, 214.0)" d="M 206.1999969482422 203.5 C 227.0999908447266 181.8999938964844 240 152.5 240 120 C 240 111.3000030517578 239.1000061035156 102.6999969482422 237.3000030517578 94.5 L 120 120 L 206.1999969482422 203.5 Z" fill="#ffd596" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l3a86 =
    '<svg viewBox="68.0 303.8 141.9 150.2" ><path transform="translate(68.0, 214.0)" d="M 120 120 L 3.799999952316284 89.80000305175781 C 1.299999952316284 99.5 0 109.5999984741211 0 120 C 0 186.3000030517578 53.70000076293945 240 120 240 C 127.5 240 134.8000030517578 239.3000030517578 141.8999938964844 238 L 120 120 Z" fill="#7ac2ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bjokkg =
    '<svg viewBox="384.0 607.0 16.0 22.0" ><path transform="translate(380.0, 606.0)" d="M 12 4 L 12 1 L 8 5 L 12 9 L 12 6 C 15.30999946594238 6 18 8.690000534057617 18 12 C 18 13.01000022888184 17.75 13.97000026702881 17.29999923706055 14.80000019073486 L 18.7599983215332 16.26000022888184 C 19.54000091552734 15.02999973297119 20 13.56999969482422 20 12 C 20 7.579999923706055 16.42000007629395 4 12 4 Z M 12 18 C 8.690000534057617 18 6 15.30999946594238 6 12 C 6 10.98999977111816 6.25 10.02999973297119 6.699999809265137 9.199999809265137 L 5.239999771118164 7.739999771118164 C 4.460000038146973 8.970000267028809 4 10.43000030517578 4 12 C 4 16.42000007629395 7.579999923706055 20 12 20 L 12 23 L 16 19 L 12 15 L 12 18 Z" fill="#9e9e9e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
