import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rob_bhit/Screens/Home.dart';
import 'package:rob_bhit/classes/ScreenData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rob_bhit/Screens/FaultAlarmScreen.dart';
import 'package:rob_bhit/Screens/HealthScreen.dart';
import 'package:rob_bhit/Screens/RoeeScreen.dart';
import 'package:rob_bhit/Screens/SustainabilityScreen.dart';

    List<ScreenData> screenDataList = [
      const ScreenData(
        title: "Health",
        screen: HealthScreen(),
        icon: Icons.monitor_heart_outlined,
        color: Color(0xffff006e)
      ),
      const ScreenData(
        title: "ROEE",
        screen: RoeeScreen(),
        icon: FontAwesomeIcons.gaugeSimpleHigh,
        color: Color(0xfffb5607)
      ),
      const ScreenData(
        title: "Home",
        screen: Home(),
        icon: Icons.home
      ),
      const ScreenData(
        title: "Alarms",
        screen: FaultAlarmScreen(),
        icon: Icons.warning,
        color: Color(0xffFF483E)
      ),
      const ScreenData(
        title: "Green",
        screen: SustainabilityScreen(),
        icon: Icons.recycling,
        color: Color(0xff2DB680)
      )
    ];

Future<T?> fadeTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.push<T>(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.fade
  )
);

Future<T?> slideRightTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.push(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.rightToLeft
  )
);

Future<T?> slideLeftTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.push(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.leftToRight
  )
);

Future<T?> slideDownTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.push(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.bottomToTop
  )
);