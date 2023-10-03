import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rob_bhit/Screens/Home.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/ScreenData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rob_bhit/Screens/FaultAlarmScreen.dart';
import 'package:rob_bhit/Screens/HealthScreen.dart';
import 'package:rob_bhit/Screens/OEEScreen.dart';
import 'package:rob_bhit/Screens/SustainabilityScreen.dart';

List<ScreenData> screenDataList = [
  const ScreenData(
    title: "Health",
    screen: HealthScreen(),
    icon: Icons.monitor_heart_outlined,
    color: AppColors.pink
  ),
  const ScreenData(
    title: "OEE",
    screen: OEEScreen(),
    icon: FontAwesomeIcons.gaugeSimpleHigh,
    color: AppColors.orange
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
    color: AppColors.red
  ),
  const ScreenData(
    title: "Green",
    screen: SustainabilityScreen(),
    icon: Icons.recycling,
    color: AppColors.secondary
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

Future<T?> slideUpTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.push(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.bottomToTop
  )
);

Future<T?> slideDownTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.push(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.topToBottom
  )
);

Future<T?> slideReplacementDownTo<T>({
  required BuildContext context,
  required Widget screen,
}) => Navigator.pushAndRemoveUntil(
  context,
  PageTransition(
    child: screen,
    type: PageTransitionType.topToBottom,
  ),
  (route) => false,
);