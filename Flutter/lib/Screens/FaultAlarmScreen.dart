import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../classes/Alarm.dart';
import '../utils/helper.dart';

class FaultAlarmScreen extends StatefulWidget {

  const FaultAlarmScreen({ super.key });

  @override
  State<FaultAlarmScreen> createState() => _FaultAlarmScreenState();

}

//Alarms class
class AlarmGraph {


  final int amtOfAlarms;
  final String weeks;

  AlarmGraph(this.amtOfAlarms, this.weeks);


}

class _FaultAlarmScreenState extends State<FaultAlarmScreen> {


  //List Of Alarms
  final List<AlarmGraph> alarmData = <AlarmGraph> [
    AlarmGraph(2, 'Week 1'),
    AlarmGraph(10, 'Week 2'),
    AlarmGraph(8, 'Week 3'),
    AlarmGraph(5, 'Week 4'),
    AlarmGraph(1, 'Week 5'),
    AlarmGraph(7, 'Week 6'),
  ];

  final List<Color> alarmColors = [
    AppColors.primary,
    AppColors.oeePrimary,
    AppColors.red,
  ];

  Widget titleWidget(String robot) =>
    Container(
      width: 350,
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
      ),
      child: Text(robot, 
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15, 
          fontWeight: FontWeight.bold, 
          color: Colors.blue,
        ),
      ),
    );

  Widget notificationWidget(String msg, Color warningColor) =>
    Container(
      width: 350,
      height: 100,
      decoration: const BoxDecoration(
        border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 275),
                    child: AutoSizeText(
                      msg,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                  )
                  ,
                  const Text('Serial: 0123456', style: TextStyle(fontSize: 15))
                ],
              ),
              const Text('08:00 PM', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.warning_rounded, color: warningColor)
          ),
        ],
      ),
    );

    Widget alarmGraph() => SizedBox(
      width: 350,
      child: SfCartesianChart(
        title: ChartTitle(
          text: 'Machine Alarms',
          textStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
        ),
        primaryXAxis: CategoryAxis(),
        // primaryYAxis: CategoryAxis(
        //   isVisible: true,
        //   title: AxisTitle(
        //     text: 'Amount of alarms'
        //   )
        // ),
        series: <ColumnSeries<AlarmGraph, dynamic>>[
          ColumnSeries<AlarmGraph, dynamic>(
            dataSource: alarmData, 
            xValueMapper: (AlarmGraph alarm, _) => alarm.weeks, 
            yValueMapper: (AlarmGraph alarm, _) => alarm.amtOfAlarms
          ),
        ],
      ),
    );

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        width: 400,
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: ValueListenableBuilder(
          valueListenable: joints,
          builder: (context, data, widget) {
            
            RobotAlarms robot = alarms.value[0];

            List<Widget> notificationWidgets = [
              titleWidget(robot.robot),
              alarmGraph()
            ];

            for (JointTurns joint in data.turns) {

              bool alarmed = false;
              int alarmIndex = robot.alarms.length - 1;

              for (Alarm alarm in robot.alarms.reversed) {

                print("${joint.turns}, ${alarm.msg} ${alarm.turns}");

                if (alarm.turns < joint.turns && !alarmed) {

                  notificationWidgets.add(
                    notificationWidget(
                      "${alarm.msg}: ${joint.joint}",
                      alarmColors[alarmIndex]
                    )
                  );
                  alarmed = true;

                }

                alarmIndex--;

              }

            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: notificationWidgets,
            );

          }
        ),
      )
    );
  
  }

}