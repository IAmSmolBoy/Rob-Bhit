// ------------------- Imports -------------------
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:http/http.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/IPNotifier.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:rob_bhit/classes/Theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../classes/Alarm.dart';










// ------------------- Variables -------------------
IPNotifier serverIP = IPNotifier("0.0.0.0");
late SharedPreferences prefs;
Color color = AppColors.primary;
LightModeNotifier lightMode = LightModeNotifier(true);
JointNotifier joints = JointNotifier([]);
AlarmNotifier alarms = AlarmNotifier([]);
TextStyle titleStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20
);
List<Message> messages = [];
List<Color> jointColors = [
  Colors.orange,
  Colors.purple,
  Colors.yellow,
  Colors.green,
  Colors.red,
  Colors.blue,
];










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


// Request Functions
void getAlarms() async {

  String alarmsjson = prefs.getString("alarms") ?? "";
  
  if (alarmsjson == "") {

    List<Alarm> robotAlarms = [
      const Alarm("Warning!", 1),
      const Alarm("Alarm!", 900),
      const Alarm("Due for replacement!", 1000),
    ];

    alarms = AlarmNotifier([
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

}

Stream<List<Joint>> getJoints(String ip) async* {
  
  while (true) {

    Response response = await get(
      Uri(
        scheme: "http",
        host: ip,
        port: 5000,
        path: "/joints",
      )
    );
    
    List body = json.decode(response.body) as List;
    List<Joint> jointList = body
      .asMap()
      .map(
        (i, jointData) => MapEntry(
          i,
          Joint.fromMap(i, jointData)
        )
      )
      .values
      .toList();

    // log("._. :) ------------------------------ ${jointList.map((e) => e.toJson()).toString()}");

    yield jointList;

    await Future.delayed(const Duration(seconds: 1));

  }

}

void resetTurns() {

  post(
    Uri(
      scheme: "http",
      host: serverIP.value,
      port: 5000,
      path: "/reset-turns"
    )
  );

}