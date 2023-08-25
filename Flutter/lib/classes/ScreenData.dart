import 'package:flutter/material.dart';

class ScreenData {

  ScreenData({
    required this.title,
    required this.icon,
    this.screen,
    this.color
  });

  final String title;
  final IconData icon;
  final Widget? screen;
  final Color? color;

}