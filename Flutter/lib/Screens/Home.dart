import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/HomeCard.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    this.setPage
  });

  final void Function(int)? setPage;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 10 / 100,
          vertical: screenSize.height * 2 / 100
        ),
        child: Column(
          children: [
            HomeCard(
              image: "Health Home",
              title: "Health",
              subTitle: "Monitor your machine's health",
              onTap: () {
                widget.setPage!(0);
              },
            ),
            HomeCard(
              image: "ROEE Home",
              title: "ROEE",
              subTitle: "Robot Overall Equipment Effectiveness",
              onTap: () {
                widget.setPage!(1);
              },
            ),
            HomeCard(
              image: "Fault Alarms Home",
              title: "Fault Alarms",
              subTitle: "Be notified of current fault alarms being triggered",
              onTap: () {
                widget.setPage!(3);
              },
            ),
            HomeCard(
              image: "Sustainability Home",
              title: "Sustainability",
              subTitle: "Monitor your carbon footprint to improve sustainability",
              onTap: () {
                widget.setPage!(4);
              },
            ),
          ],
        ),
      ) 
    );
  }
}