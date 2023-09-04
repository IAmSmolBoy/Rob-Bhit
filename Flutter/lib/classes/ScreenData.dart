import 'package:flutter/material.dart';

class ScreenData {

  const ScreenData({
    required this.title,
    required this.icon,
    required this.screen,
    this.color = const Color(0xff2aaae2),
  });

  final String title;
  final Widget screen;
  final IconData icon;
  final Color color;

}