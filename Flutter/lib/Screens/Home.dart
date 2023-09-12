import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:rob_bhit/Widgets/HomeCard.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../classes/AppColors.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    this.setPage
  });

  final void Function(int)? setPage;

  @override
  State<Home> createState() => _HomeState();
}

//Health status for joints class
class HealthStatus {
  final double jointHealth;
  final String jointNo;
  final Color colorStatus;
  HealthStatus(this.jointHealth, this.jointNo, this.colorStatus);
}

class _HomeState extends State<Home> {

  //simulated joints health status data
  final List<HealthStatus> healthStatus = <HealthStatus> [
    HealthStatus(90, 'Joint 6', Colors.blue),
    HealthStatus(93, 'Joint 5', Colors.red),
    HealthStatus(95, 'Joint 4', Colors.green),
    HealthStatus(82, 'Joint 3', Colors.yellow),
    HealthStatus(85, 'Joint 2', Colors.purple),
    HealthStatus(88, 'Joint 1', Colors.orange)
  ];

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
            // HomeCard(
            //   image: "Health Home",
            //   title: "Health",
            //   subTitle: "Monitor your machine's health",
            //   onTap: () {
            //     widget.setPage!(0);
            //   },
            // ),
            // HomeCard(
            //   image: "ROEE Home",
            //   title: "ROEE",
            //   subTitle: "Robot Overall Equipment Effectiveness",
            //   onTap: () {
            //     widget.setPage!(1);
            //   },
            // ),
            // HomeCard(
            //   image: "Fault Alarms Home",
            //   title: "Fault Alarms",
            //   subTitle: "Be notified of current fault alarms being triggered",
            //   onTap: () {
            //     widget.setPage!(3);
            //   },
            // ),
            // HomeCard(
            //   image: "Sustainability Home",
            //   title: "Sustainability",
            //   subTitle: "Monitor your carbon footprint to improve sustainability",
            //   onTap: () {
            //     widget.setPage!(4);
            //   },
            // ),
            
            //Start of Home Page
            Container(
                width: 250,
                height: 150,
                child: Image.asset('images/Logo.png'),
            ),

            //Home buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Health button
                Container(
                  width: 60,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // color: const Color.fromARGB(255, 255, 127, 176),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      widget.setPage!(0);
                    }, 
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.monitor_heart_outlined,
                          color: AppColors.pink,
                          size: 40,
                        ),
                        Text('Health',
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    )
                  ),
                ),
                //OEE Button
                Container(
                  width: 60,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // color: const Color.fromARGB(255, 255, 127, 176),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      widget.setPage!(1);
                    }, 
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.gaugeSimpleHigh,
                          color: Colors.orange,
                          size: 40,
                        ),
                        Text('OEE',
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    )
                  ),
                ),
                //Alarms button
                Container(
                  width: 60,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // color: const Color.fromARGB(255, 255, 127, 176),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      widget.setPage!(3);
                    }, 
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.warning,
                          color: Colors.red,
                          size: 40,
                        ),
                        Text('Alarms',
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    )
                  ),
                ),
                //Sustainability Button
                Container(
                  width: 60,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // color: const Color.fromARGB(255, 255, 127, 176),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      widget.setPage!(4);
                    }, 
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.recycling,
                          color: AppColors.secondary,
                          size: 40,
                        ),
                        Text('Green',
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    )
                  ),
                ),
              ],
            ),
            //Robot health graph(s)
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  title: AxisTitle(
                    text: 'Health Status (%)',
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    alignment: ChartAlignment.center
                  )
                ),
                series: <ChartSeries>[
                  BarSeries<HealthStatus, String>(
                    dataSource: healthStatus,
                    xValueMapper: (HealthStatus status, _) => status.jointNo,
                    yValueMapper: (HealthStatus status, _) => status.jointHealth,
                    pointColorMapper: (HealthStatus status, _) => status.colorStatus,
                    width: 0.6
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