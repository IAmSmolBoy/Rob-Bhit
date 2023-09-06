import 'package:flutter/material.dart';
import 'package:rob_bhit/Graphs/OEEBarGraph.dart';
import 'package:rob_bhit/Graphs/OEEPieChart.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/OEEData.dart';

class OEEScreen extends StatefulWidget {
  const OEEScreen({ super.key });

  @override
  State<OEEScreen> createState() => _OEEScreenState();
}

class _OEEScreenState extends State<OEEScreen> {

  TextStyle chartTitleStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
  );

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20
        ),
        child: Column(
          children: [
            Text(
              "OEE",
              style: chartTitleStyle,
            ),
            const OEEPieChart(
              oeeData: [
                OEEPieChartData(
                  color: AppColors.primary,
                  value: 40,
                  display: "40%",
                  name: "Availability"
                ),
                OEEPieChartData(
                  color: AppColors.secondary,
                  value: 30,
                  display: "30%",
                  name: "Performance"
                ),
                OEEPieChartData(
                  color: AppColors.orange,
                  value: 30,
                  display: "30%",
                  name: "Quality"
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Text(
              "Productive Time",
              style: chartTitleStyle,
            ),
            const OEEBarGraph(
              data: [
                OEEBarGraphData(
                  barData: [
                    OEEPieChartData(
                      name: "Fully Productive Time",
                      color: AppColors.oeeBar1,
                      value: 25
                    ),
                    OEEPieChartData(
                      name: "Quality Loss",
                      color: AppColors.oeeBar2,
                      value: 30
                    ),
                    OEEPieChartData(
                      name: "Performance Loss",
                      color: AppColors.oeeBar3,
                      value: 15
                    ),
                    OEEPieChartData(
                      name: "Availability Loss",
                      color: AppColors.oeeBar4,
                      value: 20
                    ),
                    OEEPieChartData(
                      name: "Schedule Loss",
                      color: AppColors.oeeBar5,
                      value: 10
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

  }

}