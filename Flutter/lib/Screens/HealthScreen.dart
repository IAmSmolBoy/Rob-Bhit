import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/JointsScreen.dart';
import 'package:rob_bhit/Widgets/GridCard.dart';
import 'package:rob_bhit/utils/navigation.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        GridCard(
          title: '',
          subTitle: '',
          onTap: () {  },
        ),
        GridCard(
          title: '',
          subTitle: '',
          onTap: () {  },
        ),
        GridCard(
          title: '',
          subTitle: '',
          onTap: () {  },
        ),
        GridCard(
          title: 'Joints',
          subTitle: 'Cobot Joint Angles ',
          onTap: () {
            slideRightTo(
              context: context,
              screen: const JointsScreen()
            );
          },
        ),
      ]
    );
  }
}