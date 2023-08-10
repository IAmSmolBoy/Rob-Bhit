import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
  Settings({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 44.0, end: 43.0),
            Pin(size: 65.0, middle: 0.2203),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0x42a1d4ff),
                ),
                Align(
                  alignment: Alignment(-0.547, 0.0),
                  child: SizedBox(
                    width: 56.0,
                    height: 17.0,
                    child: Text(
                      'General',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff2aaae2),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.5, start: 27.0),
                  Pin(size: 20.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'ic_settings_24px' (shape)
                      SvgPicture.string(
                    _svg_pzgfo7,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 43.0),
            Pin(size: 65.0, middle: 0.3137),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0x42a1d4ff),
                ),
                Align(
                  alignment: Alignment(-0.492, 0.0),
                  child: SizedBox(
                    width: 91.0,
                    height: 17.0,
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff2aaae2),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 28.7),
                  Pin(size: 19.5, middle: 0.5),
                  child:
                      // Adobe XD layer: 'ic_notifications_24…' (shape)
                      SvgPicture.string(
                    _svg_fk20ub,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 43.0),
            Pin(size: 65.0, middle: 0.4072),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0x42a1d4ff),
                ),
                Align(
                  alignment: Alignment(-0.548, 0.0),
                  child: SizedBox(
                    width: 60.0,
                    height: 17.0,
                    child: Text(
                      'Machine',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff2aaae2),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 22.0, start: 25.7),
                  Pin(size: 21.9, middle: 0.5),
                  child:
                      // Adobe XD layer: 'ic_build_24px' (shape)
                      SvgPicture.string(
                    _svg_xmw9vv,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 43.0),
            Pin(size: 65.0, middle: 0.5006),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0x42a1d4ff),
                ),
                Align(
                  alignment: Alignment(-0.548, 0.0),
                  child: SizedBox(
                    width: 60.0,
                    height: 17.0,
                    child: Text(
                      'Account',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff2aaae2),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 29.0),
                  Pin(size: 16.0, middle: 0.4898),
                  child:
                      // Adobe XD layer: 'ic_person_24px' (shape)
                      SvgPicture.string(
                    _svg_rs98ow,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 43.0),
            Pin(size: 65.0, middle: 0.594),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0x42a1d4ff),
                ),
                Align(
                  alignment: Alignment(-0.587, 0.0),
                  child: SizedBox(
                    width: 33.0,
                    height: 17.0,
                    child: Text(
                      'Help',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff2aaae2),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, start: 27.0),
                  Pin(size: 20.0, middle: 0.4889),
                  child:
                      // Adobe XD layer: 'ic_help_outline_24px' (shape)
                      SvgPicture.string(
                    _svg_hu8kyr,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
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
                  Pin(startFraction: 0.1361, endFraction: 0.6499),
                  Pin(size: 32.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Hi Claire,' (text)
                      Text(
                    'Settings',
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
        ],
      ),
    );
  }
}

const String _svg_pzgfo7 =
    '<svg viewBox="71.0 213.5 19.5 20.0" ><path transform="translate(68.73, 211.5)" d="M 19.43000030517578 12.97999954223633 C 19.47000122070312 12.65999984741211 19.5 12.33999919891357 19.5 12 C 19.5 11.66000080108643 19.46999931335449 11.34000015258789 19.43000030517578 11.02000045776367 L 21.54000091552734 9.370000839233398 C 21.73000144958496 9.220001220703125 21.78000068664551 8.950000762939453 21.66000175476074 8.730000495910645 L 19.66000175476074 5.270000457763672 C 19.54000091552734 5.050000667572021 19.2700023651123 4.970000267028809 19.05000114440918 5.050000667572021 L 16.56000137329102 6.050000667572021 C 16.04000091552734 5.65000057220459 15.48000144958496 5.320000648498535 14.8700008392334 5.070000648498535 L 14.49000072479248 2.420000553131104 C 14.46000003814697 2.180000066757202 14.25 2 14 2 L 10 2 C 9.75 2 9.539999961853027 2.180000066757202 9.510000228881836 2.420000076293945 L 9.130000114440918 5.070000171661377 C 8.520000457763672 5.320000171661377 7.960000038146973 5.660000324249268 7.440000057220459 6.050000190734863 L 4.949999809265137 5.050000190734863 C 4.71999979019165 4.960000038146973 4.460000038146973 5.050000190734863 4.339999675750732 5.269999980926514 L 2.339999675750732 8.729999542236328 C 2.209999561309814 8.949999809265137 2.269999742507935 9.219999313354492 2.459999561309814 9.369999885559082 L 4.569999694824219 11.01999950408936 C 4.529999732971191 11.33999919891357 4.499999523162842 11.66999912261963 4.499999523162842 12 C 4.499999523162842 12.33000087738037 4.529999732971191 12.65999984741211 4.569999694824219 12.97999954223633 L 2.459999799728394 14.6299991607666 C 2.269999742507935 14.77999877929688 2.21999979019165 15.04999923706055 2.339999914169312 15.26999950408936 L 4.340000152587891 18.72999954223633 C 4.460000038146973 18.94999885559082 4.730000019073486 19.02999877929688 4.950000286102295 18.94999885559082 L 7.440000534057617 17.94999885559082 C 7.960000514984131 18.34999847412109 8.520000457763672 18.67999839782715 9.130001068115234 18.92999839782715 L 9.510001182556152 21.57999801635742 C 9.540000915527344 21.81999778747559 9.750000953674316 21.99999809265137 10.00000095367432 21.99999809265137 L 14.00000095367432 21.99999809265137 C 14.25000095367432 21.99999809265137 14.46000099182129 21.81999778747559 14.49000072479248 21.57999801635742 L 14.8700008392334 18.92999839782715 C 15.48000049591064 18.67999839782715 16.04000091552734 18.33999824523926 16.56000137329102 17.94999885559082 L 19.05000114440918 18.94999885559082 C 19.28000068664551 19.03999900817871 19.54000091552734 18.94999885559082 19.66000175476074 18.72999954223633 L 21.66000175476074 15.26999950408936 C 21.78000259399414 15.04999923706055 21.73000144958496 14.77999973297119 21.54000091552734 14.6299991607666 L 19.43000030517578 12.97999954223633 Z M 12 15.5 C 10.06999969482422 15.5 8.5 13.93000030517578 8.5 12 C 8.5 10.06999969482422 10.06999969482422 8.5 12 8.5 C 13.93000030517578 8.5 15.5 10.06999969482422 15.5 12 C 15.5 13.93000030517578 13.93000030517578 15.5 12 15.5 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fk20ub =
    '<svg viewBox="72.7 294.8 16.0 19.5" ><path transform="translate(68.73, 292.25)" d="M 12 22 C 13.10000038146973 22 14 21.10000038146973 14 20 L 10 20 C 10 21.10000038146973 10.89000034332275 22 12 22 Z M 18 16 L 18 11 C 18 7.930000305175781 16.36000061035156 5.360000133514404 13.5 4.679999828338623 L 13.5 4 C 13.5 3.170000076293945 12.82999992370605 2.5 12 2.5 C 11.17000007629395 2.5 10.5 3.170000076293945 10.5 4 L 10.5 4.679999828338623 C 7.630000114440918 5.360000133514404 6 7.920000076293945 6 11 L 6 16 L 4 18 L 4 19 L 20 19 L 20 18 L 18 16 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xmw9vv =
    '<svg viewBox="69.7 374.6 22.0 21.9" ><path transform="translate(68.75, 373.45)" d="M 22.70000076293945 19 L 13.60000038146973 9.899999618530273 C 14.5 7.59999942779541 14 4.899999618530273 12.10000038146973 2.999999523162842 C 10.10000038146973 0.9999995231628418 7.100000381469727 0.5999994277954102 4.700000286102295 1.699999570846558 L 9 6 L 6 9 L 1.600000023841858 4.699999809265137 C 0.4000000059604645 7.099999904632568 0.8999999761581421 10.10000038146973 2.900000095367432 12.10000038146973 C 4.800000190734863 14 7.5 14.5 9.800000190734863 13.60000038146973 L 18.90000152587891 22.70000076293945 C 19.30000114440918 23.10000038146973 19.90000152587891 23.10000038146973 20.30000114440918 22.70000076293945 L 22.60000038146973 20.40000152587891 C 23.10000038146973 20.00000190734863 23.10000038146973 19.30000114440918 22.70000076293945 19.00000190734863 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rs98ow =
    '<svg viewBox="73.0 458.0 16.0 16.0" ><path transform="translate(69.0, 454.0)" d="M 12 12 C 14.21000003814697 12 16 10.21000003814697 16 8 C 16 5.789999961853027 14.21000003814697 4 12 4 C 9.789999961853027 4 8 5.789999961853027 8 8 C 8 10.21000003814697 9.789999961853027 12 12 12 Z M 12 14 C 9.329999923706055 14 4 15.34000015258789 4 18 L 4 20 L 20 20 L 20 18 C 20 15.34000015258789 14.67000007629395 14 12 14 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hu8kyr =
    '<svg viewBox="71.0 537.0 20.0 20.0" ><path transform="translate(69.0, 535.0)" d="M 11 18 L 13 18 L 13 16 L 11 16 L 11 18 Z M 12 2 C 6.480000019073486 2 2 6.480000019073486 2 12 C 2 17.52000045776367 6.480000019073486 22 12 22 C 17.52000045776367 22 22 17.52000045776367 22 12 C 22 6.479999542236328 17.52000045776367 2 12 2 Z M 12 20 C 7.590000152587891 20 4 16.40999984741211 4 12 C 4 7.590000152587891 7.590000152587891 4 12 4 C 16.40999984741211 4 20 7.590000152587891 20 12 C 20 16.40999984741211 16.40999984741211 20 12 20 Z M 12 6 C 9.789999961853027 6 8 7.789999961853027 8 10 L 10 10 C 10 8.899999618530273 10.89999961853027 8 12 8 C 13.10000038146973 8 14 8.899999618530273 14 10 C 14 12 11 11.75 11 15 L 13 15 C 13 12.75 16 12.5 16 10 C 16 7.789999961853027 14.21000003814697 6 12 6 Z" fill="#2aaae2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
