import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './health_icon.dart';
import './settings.dart';
import 'package:adobe_xd/page_link.dart';
import './home1.dart';
import './roee.dart';
import './alarm_icon.dart';
import './fault_alarms.dart';
import './green_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Health extends StatelessWidget {
  Health({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 36.0, end: 35.0),
            Pin(size: 417.0, start: 92.0),
            child:
                // Adobe XD layer: 'Charts' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'Base' (shape)
                Container(
                  color: const Color(0xffffffff),
                ),
                Pinned.fromPins(
                  Pin(size: 122.0, start: 32.0),
                  Pin(size: 33.0, start: 37.0),
                  child:
                      // Adobe XD layer: 'info' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 16.0, start: 0.0),
                        child: Text(
                          'Vibration Intensity',
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
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 82.0,
                          height: 11.0,
                          child: Text(
                            'Sorted by intensity',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xff9e9e9e),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 104.0, start: 32.0),
                  Pin(size: 33.0, end: 23.0),
                  child:
                      // Adobe XD layer: 'info' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 11.0, end: 0.0),
                        child: Text(
                          'Max. Vibration Intensity',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff222222),
                          ),
                          softWrap: false,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 23.0,
                          height: 16.0,
                          child: Text(
                            '378',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 14,
                              color: const Color(0xff222222),
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
                  Pin(size: 102.0, middle: 0.786),
                  Pin(size: 33.0, end: 23.0),
                  child:
                      // Adobe XD layer: 'info' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 11.0, end: 0.0),
                        child: Text(
                          'Avg. Vibration Intensity',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff222222),
                          ),
                          softWrap: false,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 23.0,
                          height: 16.0,
                          child: Text(
                            '232',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 14,
                              color: const Color(0xff222222),
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
                  Pin(start: 33.0, end: 34.0),
                  Pin(size: 11.0, end: 71.0),
                  child: Text(
                    '0           50         100         150        200        250         300         350',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xff222222),
                      height: 4,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 19.0, end: 20.0),
                  Pin(size: 235.0, middle: 0.467),
                  child:
                      // Adobe XD layer: 'graph' (group)
                      Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 40.0,
                          height: 21.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, start: 40.0),
                        Pin(size: 50.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.429, 1.0),
                        child: Container(
                          width: 40.0,
                          height: 113.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.143, 1.0),
                        child: Container(
                          width: 40.0,
                          height: 148.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.143, 1.0),
                        child: Container(
                          width: 40.0,
                          height: 185.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, middle: 0.7143),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, end: 40.0),
                        Pin(size: 113.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 40.0,
                          height: 31.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xff2aaae2),
                                const Color(0xfff1f9ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
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
            Pin(start: 50.0, end: 49.0),
            Pin(size: 246.0, middle: 0.4109),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 27.0, end: 0.0),
                  Pin(size: 183.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Charts' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'graph' (group)
                      Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 24.0, start: 0.0),
                            Pin(start: 0.0, end: 19.0),
                            child:
                                // Adobe XD layer: '1' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, start: 40.0),
                            Pin(start: 24.0, end: 19.0),
                            child:
                                // Adobe XD layer: '2' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, middle: 0.2857),
                            Pin(size: 128.0, end: 19.0),
                            child:
                                // Adobe XD layer: '3' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, middle: 0.4286),
                            Pin(size: 73.0, end: 19.0),
                            child:
                                // Adobe XD layer: '4' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, middle: 0.5714),
                            Pin(size: 105.0, end: 19.0),
                            child:
                                // Adobe XD layer: '5' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, end: 40.0),
                            Pin(size: 78.0, end: 19.0),
                            child:
                                // Adobe XD layer: '6' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, end: 0.0),
                            Pin(size: 73.0, end: 19.0),
                            child:
                                // Adobe XD layer: '7' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 24.0, middle: 0.7143),
                            Pin(start: 0.0, end: 19.0),
                            child:
                                // Adobe XD layer: '6' (shape)
                                Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xff2aaae2),
                                    const Color(0xffa1d4ff)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 14.0, start: 5.0),
                            Pin(size: 11.0, end: 0.0),
                            child: Text(
                              '1Q',
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
                            Pin(size: 22.0, start: 41.0),
                            Pin(size: 11.0, end: 0.0),
                            child: Text(
                              '1.5Q',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 10,
                                color: const Color(0xff222222),
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.414, 1.0),
                            child: SizedBox(
                              width: 14.0,
                              height: 11.0,
                              child: Text(
                                '2Q',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.142, 1.0),
                            child: SizedBox(
                              width: 22.0,
                              height: 11.0,
                              child: Text(
                                '2.5Q',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.138, 1.0),
                            child: SizedBox(
                              width: 14.0,
                              height: 11.0,
                              child: Text(
                                '3Q',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.426, 1.0),
                            child: SizedBox(
                              width: 22.0,
                              height: 11.0,
                              child: Text(
                                '3.5Q',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff222222),
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 14.0, end: 45.0),
                            Pin(size: 11.0, end: 0.0),
                            child: Text(
                              '4Q',
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
                            Pin(size: 22.0, end: 1.0),
                            Pin(size: 11.0, end: 0.0),
                            child: Text(
                              '4.5Q',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 10,
                                color: const Color(0xff222222),
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 122.0, start: 27.0),
                  Pin(size: 33.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'info' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 16.0, start: 0.0),
                        child: Text(
                          'Vibration Intensity',
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
                        Pin(start: 0.0, end: 18.0),
                        Pin(size: 11.0, end: 0.0),
                        child: Text(
                          'Sorted by year quarters',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff9e9e9e),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 17.0,
                    height: 196.0,
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
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 27.0),
            Pin(size: 622.0, end: 69.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 17.0, 0.0, 0.0),
                  child:
                      // Adobe XD layer: 'Charts' (group)
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
                        Pin(size: 202.0, middle: 0.4988),
                        child:
                            // Adobe XD layer: 'stats' (group)
                            Stack(
                          children: <Widget>[
                            Container(
                              color: const Color(0x427ac2ff),
                            ),
                            Align(
                              alignment: Alignment(0.475, 0.0),
                              child: SizedBox(
                                width: 40.0,
                                height: 22.0,
                                child: Text(
                                  '15%',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 20,
                                    color: const Color(0xff7f7f7f),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 120.0, end: 48.0),
                              Pin(size: 120.4, middle: 0.5022),
                              child: Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_ocdk9,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                  Pinned.fromPins(
                                    Pin(size: 67.1, start: 0.4),
                                    Pin(start: 0.0, end: 7.8),
                                    child: SvgPicture.string(
                                      _svg_sijnv,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 148.0, start: 40.0),
                              Pin(size: 125.0, end: 21.0),
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      width: 81.0,
                                      height: 16.0,
                                      child: Text(
                                        'Faulty Tools',
                                        style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 14,
                                          color: const Color(0xff2aaae2),
                                          fontWeight: FontWeight.w700,
                                          height: 1.7142857142857142,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        softWrap: false,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 31.0, 0.0, 0.0),
                                    child: SizedBox.expand(
                                        child: Text(
                                      '15% of faults are caused by faulty tools',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 14,
                                        color: const Color(0xff9e9e9e),
                                        height: 1.7142857142857142,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 202.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'stats' (group)
                            Stack(
                          children: <Widget>[
                            Container(
                              color: const Color(0xff2aaae2),
                            ),
                            Align(
                              alignment: Alignment(-0.475, 0.0),
                              child: SizedBox(
                                width: 40.0,
                                height: 22.0,
                                child: Text(
                                  '10%',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 120.0, start: 48.0),
                              Pin(size: 120.0, middle: 0.5),
                              child: Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_cbymd,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_gkea,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 148.0, end: 21.0),
                              Pin(size: 96.0, middle: 0.5283),
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      width: 80.0,
                                      height: 16.0,
                                      child: Text(
                                        'Faulty Parts',
                                        style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 14,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                          height: 1.7142857142857142,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        softWrap: false,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: SizedBox.expand(
                                        child: Text(
                                      '10% of faults are caused by faulty parts',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 14,
                                        color: const Color(0xffffffff),
                                        height: 1.7142857142857142,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 48.0, end: 27.0),
                        Pin(size: 120.0, start: 41.0),
                        child:
                            // Adobe XD layer: 'stats' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 40.0, start: 40.0),
                              Pin(size: 22.0, middle: 0.5),
                              child: Text(
                                '75%',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 20,
                                  color: const Color(0xff2aaae2),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 120.0, start: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_jbn3uw,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_i2vbk2,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 148.0, end: 0.0),
                              Pin(start: 15.0, end: 6.0),
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      width: 68.0,
                                      height: 16.0,
                                      child: Text(
                                        'Vibrations',
                                        style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 14,
                                          color: const Color(0xff2aaae2),
                                          fontWeight: FontWeight.w700,
                                          height: 1.7142857142857142,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        softWrap: false,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 31.0, 0.0, 0.0),
                                    child: SizedBox.expand(
                                        child: Text(
                                      '75% of faults are caused intense vibrations',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 14,
                                        color: const Color(0xff9e9e9e),
                                        height: 1.7142857142857142,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 72.0, start: 27.0),
                  Pin(size: 33.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'info' (group)
                      Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 41.0,
                          height: 16.0,
                          child: Text(
                            'Faults',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 14,
                              color: const Color(0xff2aaae2),
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 11.0, end: 0.0),
                        child: Text(
                          'Causes of faults',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 10,
                            color: const Color(0xff9e9e9e),
                          ),
                          softWrap: false,
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
                  Pin(size: 30.0, start: 20.5),
                  Pin(size: 16.8, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Health Icon' (component)
                      HealthIcon(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.1361, endFraction: 0.6941),
                  Pin(size: 32.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Hi Claire,' (text)
                      Text(
                    'Health',
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 120.0, middle: 0.5403),
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
                  alignment: Alignment(-0.487, 0.421),
                  child: SizedBox(
                    width: 22.0,
                    height: 27.0,
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
                              color: const Color(0xff2aaae2),
                              fontWeight: FontWeight.w700,
                              height: 0.7142857142857143,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 1.5, end: 1.5),
                          Pin(size: 10.6, start: 0.0),
                          child:
                              // Adobe XD layer: 'Health Icon' (component)
                              HealthIcon(),
                        ),
                      ],
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

const String _svg_ocdk9 =
    '<svg viewBox="0.0 0.4 120.0 120.0" ><path transform="translate(-61.8, 0.35)" d="M 121.7999877929688 120 C 88.62351989746094 120 61.80000305175781 93.17646789550781 61.80000305175781 60 C 61.80000305175781 26.82353019714355 88.62351989746094 0 121.7999877929688 0 C 154.9764709472656 0 181.7999877929688 26.82353019714355 181.7999877929688 60 C 181.7999877929688 93.17646789550781 154.9764404296875 120 121.7999877929688 120 Z M 121.7999877929688 14.11764717102051 C 96.38824462890625 14.11764717102051 75.91764831542969 34.58823776245117 75.91764831542969 60 C 75.91764831542969 85.41176605224609 96.38824462890625 105.8823547363281 121.7999877929688 105.8823547363281 C 147.2117614746094 105.8823547363281 167.6823425292969 85.41176605224609 167.6823425292969 60 C 167.6823425292969 34.58823394775391 147.2117614746094 14.11764717102051 121.7999877929688 14.11764717102051 Z" fill="#a1d4ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sijnv =
    '<svg viewBox="0.4 0.0 67.1 112.6" ><path transform="translate(-61.55, 0.1)" d="M 94.37059020996094 112.4882354736328 C 92.95881652832031 112.4882354736328 91.90000915527344 112.1352920532227 90.84117126464844 111.4294128417969 C 72.8411865234375 100.4882354736328 61.89999389648438 81.07647705078125 61.89999389648438 59.89999771118164 C 61.89999389648438 26.72353172302246 88.72352600097656 -0.1000003814697266 121.8999938964844 -0.1000003814697266 C 125.7823181152344 -0.1000003814697266 128.9588012695312 3.076470136642456 128.9588012695312 6.958823204040527 C 128.9588012695312 10.84117603302002 125.7823181152344 14.01764678955078 121.8999938964844 14.01764678955078 C 96.48822021484375 14.01764678955078 76.01762390136719 34.48823547363281 76.01762390136719 59.89999771118164 C 76.01762390136719 76.13529968261719 84.13528442382812 90.60588073730469 98.2529296875 99.07647705078125 C 101.4294128417969 101.1941223144531 102.4882202148438 105.4294128417969 100.7235107421875 108.6058883666992 C 98.95883178710938 111.4294128417969 96.8411865234375 112.4882354736328 94.37059020996094 112.4882354736328 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cbymd =
    '<svg viewBox="0.0 0.0 120.0 120.0" ><path  d="M 60 120 C 26.82353019714355 120 0 93.17646789550781 0 60 C 0 26.82353210449219 26.82353019714355 0 60 0 C 93.17646789550781 0 120 26.82353019714355 120 60 C 120 93.17646789550781 93.17646789550781 120 60 120 Z M 60 14.11764717102051 C 34.58823776245117 14.11764717102051 14.11764717102051 34.58823776245117 14.11764717102051 60 C 14.11764717102051 85.41177368164062 34.58823776245117 105.8823623657227 60 105.8823623657227 C 85.41177368164062 105.8823623657227 105.8823623657227 85.41177368164062 105.8823623657227 60 C 105.8823623657227 34.58823394775391 85.41177368164062 14.11764717102051 60 14.11764717102051 Z" fill="#a1d4ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gkea =
    '<svg viewBox="0.0 0.0 120.0 120.0" ><path  d="M 60 120 C 26.82353019714355 120 0 93.17646789550781 0 60 C 0 26.82353210449219 26.82353019714355 0 60 0 C 63.88235092163086 0 67.05883026123047 3.176470518112183 67.05883026123047 7.058823585510254 C 67.05883026123047 10.94117641448975 63.88235092163086 14.11764717102051 60 14.11764717102051 C 34.58823776245117 14.11764717102051 14.11764717102051 34.58823776245117 14.11764717102051 60 C 14.11764717102051 85.41177368164062 34.58823776245117 105.8823623657227 60 105.8823623657227 C 85.41177368164062 105.8823623657227 105.8823623657227 85.41177368164062 105.8823623657227 60 C 105.8823623657227 56.11764907836914 109.0588302612305 52.94118118286133 112.9411773681641 52.94118118286133 C 116.8235244750977 52.94118118286133 120 56.11764907836914 120 60 C 120 93.17646789550781 93.17646789550781 120 60 120 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jbn3uw =
    '<svg viewBox="0.0 0.0 120.0 120.0" ><path  d="M 60 120 C 26.82353019714355 120 0 93.17646789550781 0 60 C 0 26.82353210449219 26.82353019714355 0 60 0 C 76.12376403808594 0 90.74699401855469 6.335610389709473 101.7419738769531 16.87091064453125 C 112.913330078125 27.57301139831543 120 42.94729614257812 120 60 C 120 93.17646789550781 93.17646789550781 120 60 120 Z M 60 14.11764717102051 C 34.58823776245117 14.11764717102051 14.11764717102051 34.58823776245117 14.11764717102051 60 C 14.11764717102051 85.41177368164062 34.58823776245117 105.8823623657227 60 105.8823623657227 C 85.41177368164062 105.8823623657227 105.8823623657227 85.41177368164062 105.8823623657227 60 C 105.8823623657227 34.58823394775391 85.41177368164062 14.11764717102051 60 14.11764717102051 Z" fill="#a1d4ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i2vbk2 =
    '<svg viewBox="0.0 0.0 120.0 120.0" ><path  d="M 60 120 C 26.82353019714355 120 0 93.17646789550781 0 60 C 0 26.82353210449219 26.82353019714355 0 60 0 C 63.88235092163086 0 67.05883026123047 3.176470518112183 67.05883026123047 7.058823585510254 C 67.05883026123047 10.94117641448975 63.88235092163086 14.11764717102051 60 14.11764717102051 C 34.58823776245117 14.11764717102051 14.11764717102051 34.58823776245117 14.11764717102051 60 C 14.11764717102051 85.41177368164062 34.58823776245117 105.8823623657227 60 105.8823623657227 C 85.41177368164062 105.8823623657227 105.8823623657227 85.41177368164062 105.8823623657227 60 C 105.8823623657227 56.11764907836914 109.0588302612305 52.94118118286133 112.9411773681641 52.94118118286133 C 116.8235244750977 52.94118118286133 120 56.11764907836914 120 60 C 120 93.17646789550781 93.17646789550781 120 60 120 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o9kbam =
    '<svg viewBox="0.0 855.0 430.0 77.0" ><path transform="translate(0.0, 854.98)" d="M 56.74769973754883 77.02020263671875 C 56.17734527587891 77.02020263671875 55.6075553894043 77.01351165771484 55.04129028320312 77.00040435791016 L 0 77.00040435791016 L 0 15.00030040740967 C 0 6.715800285339355 6.715800285339355 0 15.00030040740967 0 L 70.510498046875 0 L 70.510498046875 0.1467000097036362 L 150.506103515625 0.1467000097036362 C 150.506103515625 0.1467000097036362 156.3993072509766 -0.4446000158786774 162.8793029785156 2.59470009803772 C 169.3592987060547 5.634900093078613 172.8899993896484 12.30660057067871 172.8899993896484 12.30660057067871 C 172.8899993896484 12.30660057067871 188.3205108642578 36.60480117797852 217.0413055419922 36.43830108642578 C 249.0669097900391 36.20610046386719 262.5632934570312 12.34530067443848 262.5632934570312 12.34530067443848 C 262.5632934570312 12.34530067443848 266.8536071777344 5.163300037384033 270.9027099609375 2.59470009803772 C 274.9508972167969 0.02610000036656857 278.2863159179688 0.1467000097036362 285.1416015625 0.1467000097036362 L 359.4888000488281 0.1467000097036362 L 359.4888000488281 0 L 415.9998168945312 0 C 421.8954772949219 0 426.9395141601562 3.643638610839844 429.0028991699219 8.802803039550781 C 429.6477355957031 10.19152545928955 429.9992980957031 11.68927192687988 429.9992980957031 13.25069999694824 L 429.9992980957031 14.00040054321289 L 429.9992980957031 77.00040435791016 L 375.4934997558594 77.00040435791016 C 374.92724609375 77.01351165771484 374.3574523925781 77.02020263671875 373.787109375 77.02020263671875 L 56.74769973754883 77.02020263671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
