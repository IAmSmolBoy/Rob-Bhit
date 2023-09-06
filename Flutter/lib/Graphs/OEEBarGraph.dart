import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/Indicator.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/OEEData.dart';

class OEEBarGraph extends StatefulWidget {

  const OEEBarGraph({
    super.key,
    required this.data
  });

  final List<OEEBarGraphData> data;

  @override
  State<OEEBarGraph> createState() => _OEEBarGraphState();

}

class _OEEBarGraphState extends State<OEEBarGraph> {

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    List<BarInfo> bars = [];

    for (OEEBarGraphData barGroup in widget.data) {
      for (OEEPieChartData barData in barGroup.barData) {
        bars.add(
          BarInfo(
            name: barData.name,
            color: barData.color
          )
        );
      }
    }
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: screenSize.width / 2,
          child: AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {

                  final double barWidth =  constraints.maxWidth / widget.data.length / 2;

                  return BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      gridData: FlGridData(
                        checkToShowHorizontalLine: (value) => value % 10 == 0,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: AppColors.oeeGrid.withOpacity(0.1),
                          strokeWidth: 1,
                        ),
                        drawVerticalLine: false,
                      ),
                      titlesData: const FlTitlesData(
                        show: true,
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            // getTitlesWidget: leftTitles,
                          ),
                        ),
                      ),
                      barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                          tooltipBgColor: Colors.blueGrey,
                          tooltipMargin: 10,
                          maxContentWidth: 150,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {

                            OEEBarGraphData rod = widget.data[rodIndex];
                            String values = rod
                              .barData
                              .map((OEEPieChartData data) => "${data.name}: ${data.value}")
                              .join("\n");
                            
                            return BarTooltipItem(
                              "Productive Time",
                              const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: values,
                                  style: const TextStyle(
                                    // color: ,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            );

                          },
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      groupsSpace: barWidth,
                      barGroups: [ getData(barWidth) ],
                      
                    ),
                  );
                },
              ),
            ),
          )
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: bars
            .map((BarInfo data) {

              return Indicator(
                color: data.color,
                text: data.name,
              );
            })
            .toList()
            .reversed
            .toList(),

        ),
      ],
    );
  
  }

  BarChartGroupData getData(double barWidth) {
    
    return BarChartGroupData(
      x: 0,
      barsSpace: barWidth,
      barRods: widget
        .data
        .map((OEEBarGraphData barGroupData) {

          double value = 0;
          List<BarChartRodStackItem> rodData = barGroupData
            .barData
            .map<BarChartRodStackItem>((barData) {

              double prevValue = value;
              value += barData.value;

              return BarChartRodStackItem(prevValue, value, barData.color);

            })
            .toList();
          
          return BarChartRodData(
            color: AppColors.oeeBar5,
            toY: 100,
            rodStackItems: rodData,
            borderRadius: BorderRadius.zero,
            width: barWidth,
          );
        })
        .toList()
    );
  }

}

class BarInfo {

  const BarInfo({
    required this.name,
    required this.color
  });

  final String name;
  final Color color;

}