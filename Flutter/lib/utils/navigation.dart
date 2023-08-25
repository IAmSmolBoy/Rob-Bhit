import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rob_bhit/classes/ScreenData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rob_bhit/Screens/FaultAlarmScreen.dart';
import 'package:rob_bhit/Screens/HealthScreen.dart';
import 'package:rob_bhit/Screens/RoeeScreen.dart';
import 'package:rob_bhit/Screens/SustainabilityScreen.dart';

    List<ScreenData> screenDataList = [
      ScreenData(
        title: "ROEE",
        screen: const RoeeScreen(),
        icon: FontAwesomeIcons.gaugeSimpleHigh
      ),
      ScreenData(
        title: "Health",
        screen: const HealthScreen(),
        icon: Icons.monitor_heart_outlined
      ),
      ScreenData(
        title: "Home",
        icon: Icons.home
      ),
      ScreenData(
        title: "Alarms",
        screen: const FaultAlarmScreen(),
        icon: Icons.warning,
      ),
      ScreenData(
        title: "Green",
        screen: const SustainabilityScreen(),
        icon: Icons.recycling,
        color: const Color(0xff2DB680)
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