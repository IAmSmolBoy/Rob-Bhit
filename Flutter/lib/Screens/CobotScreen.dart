import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CobotScreen extends StatefulWidget {
  const CobotScreen({ super.key });

  @override
  State<CobotScreen> createState() => _CobotScreenState();
}

class _CobotScreenState extends State<CobotScreen> {

  List<Color> jointColors = [
    AppColors.pink,
    AppColors.orange,
    AppColors.primary,
    AppColors.red,
    AppColors.secondary,
    AppColors.oeePrimary
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MainAppBar(
        title: "Cobot",
        color: AppColors.pink,
      ),
      body: ValueListenableBuilder(
        // valueListenable: ValueNotifier(null),
        valueListenable: joints,
        builder: (BuildContext context, dynamic value, Widget? widget) {

          List<Angles> angles = joints
            .value
            .angles;
          List<JointTurns> turns = joints
            .value
            .turns;

          int i = -1;

          angles = angles.map(
            (angle) {

              i++;
              return Angles(
                angle.joint,
                angle.angle,
                color: jointColors[i]
              );

            }
          ).toList();

          angles.sort((a, b) => (a.angle - b.angle).toInt(),);

          return SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 25),
                const Text(
                  "Joint Angles",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SfCircularChart(
                  tooltipBehavior: TooltipBehavior(
                    enable: true,
                    shouldAlwaysShow: true,
                    animationDuration: 0
                  ),
                  legend: const Legend(
                    isVisible: true,
                    position: LegendPosition.bottom,
                    overflowMode: LegendItemOverflowMode.wrap
                  ),
                  series: <CircularSeries>[
                    RadialBarSeries<Angles, String>(
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                      ),
                      dataLabelMapper: (data, _) => "${data.angle.toStringAsFixed(2)}°",
                      maximumValue: 360,
                      animationDuration: 0,
                      enableTooltip: true,
                      dataSource: angles,
                      innerRadius: "10",
                      pointColorMapper: (Angles data, _) => data.color,
                      xValueMapper: (Angles data, _) => data.joint,
                      yValueMapper: (Angles data, _) => data.angle,
                    )
                  ]
                ),
                Container(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Joint Turns",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 25,
                        child: ElevatedButton(
                          onPressed: resetTurns,
                          child: Text("Reset")
                        )
                      )
                    ],
                  ),
                ),
                SfCircularChart(
                  tooltipBehavior: TooltipBehavior(
                    enable: true,
                    shouldAlwaysShow: true,
                    animationDuration: 0
                  ),
                  legend: const Legend(
                    isVisible: true,
                    position: LegendPosition.bottom,
                    overflowMode: LegendItemOverflowMode.wrap
                  ),
                  series: <CircularSeries>[
                    PieSeries<JointTurns, String>(
                      dataLabelSettings: const DataLabelSettings(isVisible: true,),
                      enableTooltip: true,
                      dataSource: turns,
                      animationDuration: 5,
                      animationDelay: 0,
                      dataLabelMapper:(data, _) => "${data.turns.toStringAsFixed(2)} turns",
                      xValueMapper: (JointTurns data, _) => data.joint,
                      yValueMapper: (JointTurns data, _) => data.turns,
                    )
                  ]
                ),
              ],
            ),
          );

        },
      )
    );

  }

}