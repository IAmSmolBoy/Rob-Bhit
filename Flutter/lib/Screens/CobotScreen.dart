import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/JointsScreen.dart';
import 'package:rob_bhit/Screens/TurnsScreen.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/Widgets/GridCard.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:rob_bhit/utils/navigation.dart';

class CobotScreen extends StatefulWidget {
  const CobotScreen({ super.key });

  @override
  State<CobotScreen> createState() => _CobotScreenState();
}

class _CobotScreenState extends State<CobotScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MainAppBar(
        title: "Cobot",
        color: color,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          GridCard(
            title: 'Status',
            subTitle: 'Health Status',
            onTap: () {  },
          ),
          GridCard(
            title: '',
            subTitle: '',
            onTap: () {  },
          ),
          GridCard(
            title: 'Mileage',
            subTitle: 'Cobot Joint Conditions',
            onTap: () {
              slideRightTo(
                context: context,
                screen: const TurnsScreen()
              );
            },
          ),
          GridCard(
            title: 'Joints',
            subTitle: 'Cobot Joint Angles',
            onTap: () {
              slideRightTo(
                context: context,
                screen: const JointsScreen()
              );
            },
          ),
        ],
      ),
    );

  }

}