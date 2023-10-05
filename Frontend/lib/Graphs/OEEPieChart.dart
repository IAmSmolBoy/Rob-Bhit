import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/Indicator.dart';
import 'package:rob_bhit/classes/OEEData.dart';

class OEEPieChart extends StatefulWidget {

  const OEEPieChart({
    super.key,
    required this.oeeData
  });

  final List<OEEPieChartData> oeeData;

  @override
  State<OEEPieChart> createState() => _OEEPieChartState();

}

class _OEEPieChartState extends State<OEEPieChart> {

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 1.6,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {

                      setState(() {

                        if (
                          !event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null
                        ) {

                          touchedIndex = -1;

                        }
                        else {

                          touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;

                        }

                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget
              .oeeData
              .asMap()
              .map((i, data) {

                return MapEntry(
                  i,
                  Indicator(
                    color: data.color,
                    text: data.name,
                  )
                );
              })
              .values
              .toList(),
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );

  }

  List<PieChartSectionData> showingSections() {

    return widget
        .oeeData
        .asMap()
        .map((i, data) {
          
          final fontSize = i == touchedIndex ? 25.0 : 16.0;
          final radius = i == touchedIndex ? 60.0 : 50.0;
          const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

          return MapEntry(
            i,
            PieChartSectionData(
              color: data.color,
              value: data.value,
              title: data.display ?? "${data.value}",
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: shadows,
              ),
            )
          );
        })
        .values
        .toList();

  }

}