import 'package:flutter/material.dart';

class OEEPieChartData {

  const OEEPieChartData({
    required this.value,
    required this.color,
    required this.name,
    this.display,
  });

  final Color color;
  final double value;
  final String name;
  final String? display;

}

class OEEBarGraphData {

  const OEEBarGraphData({
    required this.barData,
  });

  final List<OEEPieChartData> barData;
  // final double scheduleLoss, availabilityLoss, performanceLoss, qualityLoss;
  // final String? title;

}