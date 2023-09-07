import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FaultAlarmScreen extends StatefulWidget {
  const FaultAlarmScreen({ super.key });

  @override
  State<FaultAlarmScreen> createState() => _FaultAlarmScreenState();
}

//Alarms class
class Alarms {
  final int amtOfAlarms;
  final String weeks;
  Alarms(this.amtOfAlarms, this.weeks);
}

class _FaultAlarmScreenState extends State<FaultAlarmScreen> {
  //List Of Alarms
  final List<Alarms> alarms = <Alarms> [
    Alarms(2, 'Week 1'),
    Alarms(10, 'Week 2'),
    Alarms(8, 'Week 3'),
    Alarms(5, 'Week 4'),
    Alarms(1, 'Week 5'),
    Alarms(7, 'Week 6'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 400,
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Title of Machine
            Container(
              width: 350,
              padding: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
              ),
              child: const Text('CNC Machine', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.blue,
                ),
              ),
            ),
            //One Notification
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: const Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Emergency Stop',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text('Serial: 0123456', style: TextStyle(fontSize: 15))
                        ],
                      ),
                      Text('08:00 PM', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.warning_rounded, color: Colors.yellow)
                  ),
                ],
              ),
            ),
            //One Notification
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: const Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Low Air Pressure',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text('Serial: 1234567', style: TextStyle(fontSize: 15))
                        ],
                      ),
                      Text('10:00 PM', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.warning_rounded, color: Colors.yellow)
                  ),
                ],
              ),
            ),
            //One Notification
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: const Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Low Coolant Level',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text('Serial: 2345678', style: TextStyle(fontSize: 15))
                        ],
                      ),
                      Text('08:00 AM', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.warning_rounded, color: Colors.yellow)
                  ),
                ],
              ),
            ),
            //One Notification
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: const Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('X-Axis Servo Fault',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text('Serial: 3456789', style: TextStyle(fontSize: 15))
                        ],
                      ),
                      Text('10:35 AM', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.warning_rounded, color: Colors.yellow)
                  ),
                ],
              ),
            ),

            //Alarms Bar Graph
            Container(
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
                series: <ColumnSeries<Alarms, dynamic>>[
                  ColumnSeries<Alarms, dynamic>(
                    dataSource: alarms, 
                    xValueMapper: (Alarms alarm, _) => alarm.weeks, 
                    yValueMapper: (Alarms alarm, _) => alarm.amtOfAlarms
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}