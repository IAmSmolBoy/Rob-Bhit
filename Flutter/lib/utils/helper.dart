// ------------------- Imports -------------------
import 'dart:convert';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../classes/Alarm.dart';










// ------------------- Variables -------------------
late SharedPreferences prefs;
Color color = AppColors.primary;
JointNotifier joints = JointNotifier(const Joints([], []));
AlarmNotifier alarms = AlarmNotifier([]);










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
void getAlarms() async {

  String alarmsjson = prefs.getString("alarms") ?? "";
  
  if (alarmsjson == "") {

    List<Alarm> robotAlarms = [
      const Alarm("Warning!", 800),
      const Alarm("Alarm!", 900),
      const Alarm("Due for replacement!", 1000),
    ];

    alarms = AlarmNotifier.fromMap([
      RobotAlarms('Cobot 001', robotAlarms),
      RobotAlarms('SCARA 01', robotAlarms),
      RobotAlarms('DELTA 01', robotAlarms),
      RobotAlarms('CNC XY 01', robotAlarms),
      RobotAlarms('Cobot 002', robotAlarms),
      RobotAlarms('CNC XY 02', robotAlarms)
    ]);

    prefs.setString(
      "alarms",
      alarms.tojson()
    );

  }

  else {

    alarms = AlarmNotifier.fromjson(alarmsjson);

  }

  alarms.value.forEach((e) {
    print("Robot: ${e.robot}, Alarms: ${e.alarms.map((e) => "msg: ${e.msg}, turns: ${e.turns}").toList()}",);
  });

}

// Stream<Map<String, double>> getCobotData() async* {

//   while (true) {

//     Response response = await get(
//       Uri(
//         scheme: "http",
//         host: dotenv.env['SERVERIP'],
//         port: 5000,
//         path: "/current/cobot"
//       )
//     );
    
//     Map body = json.decode(response.body);
//     Map<String, double> data = body.map<String, double>((key, value) => MapEntry("$key", value));

//     yield data;

//     await Future.delayed(const Duration(seconds: 1));

//   }

// }

// Stream<void> getJointDetails() async* {

//   while (true) {

//     Response response = await get(
//       Uri(
//         scheme: "http",
//         host: dotenv.env['SERVERIP'],
//         port: 5000,
//         path: "/joints",
//       )
//     );
    
//     Map body = json.decode(response.body);

//     print(body);
    
//     joints.set(
//       Joints(
//         body["angles"]
//           .entries
//           .map((MapEntry angle) => Angles(angle.key, angle.value))
//           .toList(),
//         body["turns"]
//           .entries
//           .map((MapEntry angle) => JointTurns(angle.key, angle.value))
//           .toList()
//       )
//     );

//     yield null;

//     print(joints);

//     await Future.delayed(const Duration(seconds: 1));

//   }

// }

void getJoints() async {
  
  while (true) {

    Response response = await get(
      Uri(
        scheme: "http",
        host: dotenv.env['SERVERIP'],
        port: 5000,
        path: "/joints",
      )
    );
    
    Map body = json.decode(response.body);
    Map<String, double> angles = (body["angles"] as Map).map((key, value) => MapEntry("$key", value.toDouble()));
    Map<String, double> turns = (body["turns"] as Map).map((key, value) => MapEntry("$key", value.toDouble()));
    
    joints.set(
      Joints(
        angles
          .entries
          .map<Angles>((MapEntry<String, double> angle) => Angles(angle.key, angle.value))
          .toList(),
        turns
          .entries
          .map<JointTurns>((MapEntry<String, double> angle) => JointTurns(angle.key, angle.value))
          .toList()
      )
    );

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