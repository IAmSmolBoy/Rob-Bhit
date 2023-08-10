import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './home1.dart';
import 'package:adobe_xd/page_link.dart';
import './roee.dart';
import './green_screen.dart';
import './health.dart';
import './settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaultAlarms extends StatelessWidget {
  FaultAlarms({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 46.0, end: 12.0),
            Pin(size: 418.0, end: 114.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 6.0, start: 0.0),
                  Pin(start: 21.0, end: 46.0),
                  child: Text(
                    '\n\n7\n\n\n\n6\n\n\n\n5\n\n\n\n\n4\n\n\n\n3\n\n\n2\n\n\n\n1',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 10,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.21999999999999997,
                    ),
                    softWrap: false,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  margin: EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(13.0, 48.5, 0.4, 38.3),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_bldhzq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(start: 35.0, end: 24.0),
                  Pin(size: 13.0, end: 21.0),
                  child: Text(
                    'Week 1            Week 2            Week 3              Week 4           Week 5',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 10,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.21999999999999997,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.2291),
                  Pin(start: 49.0, end: 39.0),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.4232),
                  Pin(start: 49.0, end: 39.0),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.6119),
                  Pin(start: 49.0, end: 39.0),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, end: 72.0),
                  Pin(start: 49.0, end: 39.0),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 13.0, end: 0.0),
                  Pin(size: 1.0, start: 49.0),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 13.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.2734),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 13.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.4317),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 13.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.5899),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 13.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.7482),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 13.0, end: 0.0),
                  Pin(size: 1.0, end: 39.0),
                  child: Container(
                    color: const Color(0x427ac2ff),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.17, -1.0),
                  child: SizedBox(
                    width: 172.0,
                    height: 26.0,
                    child: Text(
                      'Machine Alarams',
                      style: TextStyle(
                        fontFamily: 'Bio Sans',
                        fontSize: 21,
                        color: const Color(0xff2aaae2),
                        letterSpacing: 0.46199999999999997,
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
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
                    child: Stack(
                      children: <Widget>[
                        Container(),
                        Pinned.fromPins(
                          Pin(start: 0.5, end: 0.5),
                          Pin(size: 10.0, end: 0.0),
                          child: Text(
                            'Faults',
                            style: TextStyle(
                              fontFamily: 'Euclid Circular A',
                              fontSize: 7,
                              color: const Color(0xff2aaae2),
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
            Pin(size: 90.0, middle: 0.4882),
            Pin(size: 16.0, start: 120.0),
            child: Text(
              'CNC Machine',
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
                  Pin(startFraction: 0.1361, endFraction: 0.5383),
                  Pin(size: 32.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Hi Claire,' (text)
                      Text(
                    'Fault Alarms',
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 4.0, end: 12.0),
            Pin(size: 99.0, middle: 0.2514),
            child:
                // Adobe XD layer: '01' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_z9wcf9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(size: 165.0, start: 26.0),
                  Pin(size: 27.0, middle: 0.375),
                  child: Text(
                    'Fault Register 2',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 22,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.484,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 102.0, start: 26.0),
                  Pin(size: 18.0, middle: 0.6914),
                  child: Text(
                    'Serial: 1234567',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 14,
                      color: const Color(0xb23b3e51),
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 64.0, end: 44.0),
                  Pin(size: 18.0, middle: 0.5309),
                  child: Text(
                    '09:00 PM',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 14,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.308,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, end: 7.0),
                  Pin(size: 26.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff5f5f5),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 4.0, end: 12.0),
            Pin(size: 99.0, middle: 0.3599),
            child:
                // Adobe XD layer: '01' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_z9wcf9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(size: 165.0, start: 26.0),
                  Pin(size: 27.0, middle: 0.375),
                  child: Text(
                    'Fault Register 3',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 22,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.484,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 102.0, start: 26.0),
                  Pin(size: 18.0, middle: 0.6914),
                  child: Text(
                    'Serial: 2345678',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 14,
                      color: const Color(0xb23b3e51),
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 64.0, end: 44.0),
                  Pin(size: 18.0, middle: 0.5309),
                  child: Text(
                    '08:00 AM',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 14,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.308,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, end: 7.0),
                  Pin(size: 26.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff5f5f5),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 4.0, end: 12.0),
            Pin(size: 99.0, middle: 0.4684),
            child:
                // Adobe XD layer: '01' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_z9wcf9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(size: 165.0, start: 26.0),
                  Pin(size: 27.0, middle: 0.375),
                  child: Text(
                    'Fault Register 4',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 22,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.484,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 102.0, start: 26.0),
                  Pin(size: 18.0, middle: 0.6914),
                  child: Text(
                    'Serial: 3456789',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 14,
                      color: const Color(0xb23b3e51),
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 64.0, end: 44.0),
                  Pin(size: 18.0, middle: 0.5309),
                  child: Text(
                    '10:30 AM',
                    style: TextStyle(
                      fontFamily: 'Bio Sans',
                      fontSize: 14,
                      color: const Color(0xff3b3e51),
                      letterSpacing: 0.308,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, end: 7.0),
                  Pin(size: 26.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff5f5f5),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 4.0, end: 12.0),
            Pin(size: 472.0, start: 158.0),
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  {
                    'text': 'Emergency Stop',
                    'text_0': 'Serial: 0123456',
                    'text_1': '08:00 PM',
                  },
                  {
                    'text': 'Low Air Pressure',
                    'text_0': 'Serial: 1234567',
                    'text_1': '10:00 PM',
                  },
                  {
                    'text': 'Low Coolant Level',
                    'text_0': 'Serial: 2345678',
                    'text_1': '08:00 AM',
                  },
                  {
                    'text': 'X-Axis Servo Fault',
                    'text_0': 'Serial: 3456789',
                    'text_1': '10:35 AM',
                  }
                ].map((itemData) {
                  final text = itemData['text']!;
                  final text_0 = itemData['text_0']!;
                  final text_1 = itemData['text_1']!;
                  return SizedBox(
                    width: 414.0,
                    height: 99.0,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                          child: SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_xslo86,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                        ),
                        Pinned.fromPins(
                          Pin(size: 169.0, start: 26.0),
                          Pin(size: 27.0, middle: 0.375),
                          child: Text(
                            text,
                            style: TextStyle(
                              fontFamily: 'Bio Sans',
                              fontSize: 22,
                              color: const Color(0xff3b3e51),
                              letterSpacing: 0.484,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 102.0, start: 26.0),
                          Pin(size: 18.0, middle: 0.6914),
                          child: Text(
                            text_0,
                            style: TextStyle(
                              fontFamily: 'Bio Sans',
                              fontSize: 14,
                              color: const Color(0xb23b3e51),
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 64.0, end: 44.0),
                          Pin(size: 18.0, middle: 0.5309),
                          child: Text(
                            text_1,
                            style: TextStyle(
                              fontFamily: 'Bio Sans',
                              fontSize: 14,
                              color: const Color(0xff3b3e51),
                              letterSpacing: 0.308,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 26.0, end: 7.0),
                          Pin(size: 26.0, start: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 17.5, end: 11.5),
                          Pin(size: 17.5, start: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffff483e),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 5.0, end: 18.0),
                          Pin(size: 17.0, start: 4.0),
                          child: Text(
                            '!',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xslo86 =
    '<svg viewBox="4.0 162.0 414.0 95.0" ><path transform="translate(4035.0, 2975.0)" d="M -3647 -2717.999755859375 L -4000.999755859375 -2717.999755859375 C -4005.049560546875 -2717.999755859375 -4008.978271484375 -2718.79296875 -4012.67724609375 -2720.357177734375 C -4016.24951171875 -2721.868408203125 -4019.4580078125 -2724.031494140625 -4022.213134765625 -2726.78662109375 C -4024.96826171875 -2729.541748046875 -4027.131591796875 -2732.750244140625 -4028.642578125 -2736.322509765625 C -4030.206787109375 -2740.021240234375 -4031 -2743.9501953125 -4031 -2748.000244140625 L -4031 -2783.000244140625 C -4031 -2787.050048828125 -4030.206787109375 -2790.97900390625 -4028.642578125 -2794.677734375 C -4027.131591796875 -2798.249755859375 -4024.96826171875 -2801.4580078125 -4022.213134765625 -2804.213134765625 C -4019.4580078125 -2806.96826171875 -4016.249755859375 -2809.131103515625 -4012.67724609375 -2810.64208984375 C -4008.978515625 -2812.206298828125 -4005.049560546875 -2812.99951171875 -4000.999755859375 -2812.99951171875 L -3649.00146484375 -2812.99951171875 C -3650.963134765625 -2810.387939453125 -3652.00048828125 -2807.276611328125 -3652.00048828125 -2804 C -3652.00048828125 -2795.72900390625 -3645.271240234375 -2789.000244140625 -3636.999755859375 -2789.000244140625 C -3630.14013671875 -2789.000244140625 -3624.1640625 -2793.63525390625 -3622.467041015625 -2800.271728515625 C -3618.889404296875 -2795.2001953125 -3616.99951171875 -2789.227783203125 -3616.99951171875 -2783.000244140625 L -3616.99951171875 -2748.000244140625 C -3616.99951171875 -2743.9501953125 -3617.792724609375 -2740.021240234375 -3619.35693359375 -2736.322509765625 C -3620.8681640625 -2732.75 -3623.03125 -2729.541748046875 -3625.786376953125 -2726.78662109375 C -3628.54150390625 -2724.031494140625 -3631.749755859375 -2721.868408203125 -3635.322265625 -2720.357177734375 C -3639.021240234375 -2718.79296875 -3642.9501953125 -2717.999755859375 -3647 -2717.999755859375 Z" fill="#ffffff" stroke="#ededed" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bldhzq =
    '<svg viewBox="59.0 721.5 358.6 331.2" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="0.975738"><stop offset="0.0" stop-color="#2aaae2" /><stop offset="1.0" stop-color="#a1d4ff" stop-opacity="0.26"/></linearGradient></defs><path transform="translate(59.0, 721.47)" d="M 215.70654296875 66.93359375 L 215.70654296875 0 L 286.712890625 0 L 286.712890625 197.828125 L 358.64892578125 197.828125 L 358.64892578125 264.08349609375 L 358.64892578125 264.08349609375 L 358.64892578125 331.187744140625 L 313.8178100585938 331.187744140625 L 268.9866943359375 331.187744140625 L 224.1555786132812 331.187744140625 L 179.324462890625 331.187744140625 L 134.4933471679688 331.187744140625 L 89.6622314453125 331.187744140625 L 44.83111572265625 331.187744140625 L 0 331.187744140625 L 0 264.08349609375 L 44.83111572265625 264.08349609375 L 44.83111572265625 264.08349609375 L 72.78369140625 264.08349609375 L 72.78369140625 197.828125 L 144.7001953125 197.828125 L 144.7001953125 132.111572265625 L 215.70654296875 132.111572265625 L 215.70654296875 66.93359375 L 215.70654296875 66.93359375 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o9kbam =
    '<svg viewBox="0.0 855.0 430.0 77.0" ><path transform="translate(0.0, 854.98)" d="M 56.74769973754883 77.02020263671875 C 56.17734527587891 77.02020263671875 55.6075553894043 77.01351165771484 55.04129028320312 77.00040435791016 L 0 77.00040435791016 L 0 15.00030040740967 C 0 6.715800285339355 6.715800285339355 0 15.00030040740967 0 L 70.510498046875 0 L 70.510498046875 0.1467000097036362 L 150.506103515625 0.1467000097036362 C 150.506103515625 0.1467000097036362 156.3993072509766 -0.4446000158786774 162.8793029785156 2.59470009803772 C 169.3592987060547 5.634900093078613 172.8899993896484 12.30660057067871 172.8899993896484 12.30660057067871 C 172.8899993896484 12.30660057067871 188.3205108642578 36.60480117797852 217.0413055419922 36.43830108642578 C 249.0669097900391 36.20610046386719 262.5632934570312 12.34530067443848 262.5632934570312 12.34530067443848 C 262.5632934570312 12.34530067443848 266.8536071777344 5.163300037384033 270.9027099609375 2.59470009803772 C 274.9508972167969 0.02610000036656857 278.2863159179688 0.1467000097036362 285.1416015625 0.1467000097036362 L 359.4888000488281 0.1467000097036362 L 359.4888000488281 0 L 415.9998168945312 0 C 421.8954772949219 0 426.9395141601562 3.643638610839844 429.0028991699219 8.802803039550781 C 429.6477355957031 10.19152545928955 429.9992980957031 11.68927192687988 429.9992980957031 13.25069999694824 L 429.9992980957031 14.00040054321289 L 429.9992980957031 77.00040435791016 L 375.4934997558594 77.00040435791016 C 374.92724609375 77.01351165771484 374.3574523925781 77.02020263671875 373.787109375 77.02020263671875 L 56.74769973754883 77.02020263671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z9wcf9 =
    '<svg viewBox="0.0 504.0 414.0 95.0" ><path transform="translate(4031.0, 3317.0)" d="M -3647 -2717.999755859375 L -4000.999755859375 -2717.999755859375 C -4005.049560546875 -2717.999755859375 -4008.978271484375 -2718.79296875 -4012.67724609375 -2720.357177734375 C -4016.24951171875 -2721.868408203125 -4019.4580078125 -2724.031494140625 -4022.213134765625 -2726.78662109375 C -4024.96826171875 -2729.541748046875 -4027.131591796875 -2732.750244140625 -4028.642578125 -2736.322509765625 C -4030.206787109375 -2740.021240234375 -4031 -2743.9501953125 -4031 -2748.000244140625 L -4031 -2783.000244140625 C -4031 -2787.050048828125 -4030.206787109375 -2790.97900390625 -4028.642578125 -2794.677734375 C -4027.131591796875 -2798.249755859375 -4024.96826171875 -2801.4580078125 -4022.213134765625 -2804.213134765625 C -4019.4580078125 -2806.96826171875 -4016.249755859375 -2809.131103515625 -4012.67724609375 -2810.64208984375 C -4008.978515625 -2812.206298828125 -4005.049560546875 -2812.99951171875 -4000.999755859375 -2812.99951171875 L -3649.00146484375 -2812.99951171875 C -3650.963134765625 -2810.387939453125 -3652.00048828125 -2807.276611328125 -3652.00048828125 -2804 C -3652.00048828125 -2795.72900390625 -3645.271240234375 -2789.000244140625 -3636.999755859375 -2789.000244140625 C -3630.14013671875 -2789.000244140625 -3624.1640625 -2793.63525390625 -3622.467041015625 -2800.271728515625 C -3618.889404296875 -2795.2001953125 -3616.99951171875 -2789.227783203125 -3616.99951171875 -2783.000244140625 L -3616.99951171875 -2748.000244140625 C -3616.99951171875 -2743.9501953125 -3617.792724609375 -2740.021240234375 -3619.35693359375 -2736.322509765625 C -3620.8681640625 -2732.75 -3623.03125 -2729.541748046875 -3625.786376953125 -2726.78662109375 C -3628.54150390625 -2724.031494140625 -3631.749755859375 -2721.868408203125 -3635.322265625 -2720.357177734375 C -3639.021240234375 -2718.79296875 -3642.9501953125 -2717.999755859375 -3647 -2717.999755859375 Z" fill="#ffffff" stroke="#ededed" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
