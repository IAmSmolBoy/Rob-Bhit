// ------------------- Imports -------------------
import 'dart:convert';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:shared_preferences/shared_preferences.dart';










// ------------------- Variables -------------------
late SharedPreferences prefs;
Color color = AppColors.primary;
Map<String, double> turns = {};










// ------------------- Functions -------------------
String? emailValidator(String? value) {

  String? msg;

  if (value == null || value == "") {

    msg = "Please enter your email";
  
  }

  else if (!value.contains("@") || !value.contains(".")) {

    msg = "Invalid Email";
  
  }

  else {

    List<String> sections = value.split("@");

    if (sections.length < 2) {

      msg = "Invalid Email";
    
    }

    // Split value by @ and .
    sections.replaceRange(1, 2, sections[1].split("."));
    sections = sections.expand<String>((e) => [e]).toList();

    // Check if each section is not empty
    if (sections.any((e) => e.isEmpty)) {

      msg = "Invalid Email";
    
    }
  
  }

  return msg;

}


// Graph Functions
Widget leftTitles(double value, TitleMeta meta) {
  return Container();
} 


// Request Functions
Stream<Map<String, double>> getCobotData() async* {

  while (true) {

    Response response = await get(
      Uri(
        scheme: "http",
        host: dotenv.env['SERVERIP'],
        port: 5000,
        path: "/current/cobot"
      )
    );
    
    Map body = json.decode(response.body);
    Map<String, double> data = body.map<String, double>((key, value) => MapEntry("$key", value));

    yield data;

    await Future.delayed(const Duration(seconds: 1));

  }

}

Stream<Map<String, double>> getJointTurns() async* {

  while (true) {

    Response response = await get(
      Uri(
        scheme: "http",
        host: dotenv.env['SERVERIP'],
        port: 5000,
        path: "/turns"
      )
    );
    
    Map body = json.decode(response.body);
    Map<String, double> data = body.map<String, double>((key, value) => MapEntry("$key", value));

    yield data;

    await Future.delayed(const Duration(seconds: 1));

  }

}

void resetTurns() {

  post(
    Uri(
      scheme: "http",
      host: dotenv.env['SERVERIP'],
      port: 5000,
      path: "/reset-turns"
    )
  );

}