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

          List<Joint> sortByAngle = joints.value;
          List<Joint> sortByTurns = joints.value;

          sortByAngle.sort((a, b) => (a.angle - b.angle).toInt(),);
          sortByTurns.sort((a, b) => (a.angle - b.angle).toInt(),);

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
                    RadialBarSeries<Joint, String>(
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                      ),
                      dataLabelMapper: (data, _) => "${data.angle.toStringAsFixed(2)}°",
                      maximumValue: 360,
                      animationDuration: 0,
                      enableTooltip: true,
                      dataSource: sortByAngle,
                      innerRadius: "10",
                      pointColorMapper: (Joint data, _) => data.color,
                      xValueMapper: (Joint data, _) => "Joint ${data.jointNo}",
                      yValueMapper: (Joint data, _) => data.angle,
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
                    PieSeries<Joint, String>(
                      dataLabelSettings: const DataLabelSettings(isVisible: true,),
                      enableTooltip: true,
                      dataSource: sortByTurns,
                      animationDuration: 5,
                      animationDelay: 0,
                      dataLabelMapper:(data, _) => "${data.turns.toStringAsFixed(2)} turns",
                      xValueMapper: (Joint data, _) => "Joint ${data.jointNo}",
                      yValueMapper: (Joint data, _) => data.turns,
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