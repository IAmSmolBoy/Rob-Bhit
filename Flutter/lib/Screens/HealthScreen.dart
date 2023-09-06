import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/CobotScreen.dart';
import 'package:rob_bhit/Widgets/HealthCard.dart';
import 'package:rob_bhit/utils/navigation.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({ super.key });

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
      childAspectRatio: .65,
      children: [
        // TransparentImageCard(
        //   width: 200,
        //   imageProvider: AssetImage('images/Health Home.png'),
        //   title: Text(
        //     'Card title',
        //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        //   ),
        //   description: Text(
        //     'This a card description',
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        HealthCard(
          image: "Cobot Icon Pink",
          title: 'Cobot 001',
          // subTitle: 'Health Status:',
          onTap: () {
            slideRightTo(
              context: context,
              screen: const CobotScreen()
            );
          },
        ),
        HealthCard(
          image: "Scara Robot Icon",
          title: 'SCARA 01',
          // subTitle: 'Health Status',
          onTap: () {  },
        ),
        HealthCard(
          image: "Delta Icon",
          title: 'DELTA 01',
          // subTitle: 'Health Status',
          onTap: () {  },
        ),
        HealthCard(
          image: "CNC Icon",
          title: 'CNC XY 01',
          // subTitle: 'Health Status',
          onTap: () {  },
        ),
        HealthCard(
          image: "Cobot Icon Pink",
          title: 'Cobot 002',
          // subTitle: 'Health Status',
          onTap: () {  },
        ),
        HealthCard(
          image: "CNC Icon",
          title: 'CNC XY 02',
          // subTitle: 'Health Status',
          onTap: () {  },
        ),
      ]
    );

  }

}