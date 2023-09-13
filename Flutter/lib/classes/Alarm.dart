import 'dart:convert';

import 'package:flutter/material.dart';

class AlarmNotifier extends ValueNotifier<List<RobotAlarms>> {

  AlarmNotifier(super.value);

  void addRobot(RobotAlarms newValue) {

    super.value
      .add(newValue);
  
  }

  void removeRobot(int index) {

    super.value
      .removeAt(index);
  
  }

  void addAlarm(int robotIndex, Alarm newValue) {

    super.value[robotIndex]
      .add(newValue);
  
  }

  void removeAlarm(int robotIndex, int alarmIndex) {

    super.value[robotIndex]
      .remove(alarmIndex);
  
  }

  String tojson() =>
    json.encode(
      super.value
        .map(
          (RobotAlarms robotAlarms) =>
            robotAlarms.tojson()
        ).toList()
      );

  static AlarmNotifier fromMap(List<RobotAlarms> robotAlarms) =>
    AlarmNotifier(robotAlarms);

  static AlarmNotifier fromjson(String jsonStr) {

    List decoded = json.decode(jsonStr);

    return AlarmNotifier.fromMap(
      decoded.isNotEmpty ?
        decoded as List<RobotAlarms> :
        []
    );

  }
    

}

class RobotAlarms {

  const RobotAlarms(this.robot, this.alarms);

  final String robot;
  final List<Alarm> alarms;

  void add(Alarm alarm) {
    
    alarms.add(alarm);

  }

  void remove(int index) {

    alarms.removeAt(index);
  
  }

  String tojson() =>
    json.encode({
      "robot": robot,
      "alarms": alarms
        .map((Alarm alarm) => alarm.tojson())
        .toList()
    });

  static RobotAlarms fromMap(Map<String, dynamic> obj) =>
    RobotAlarms(
      obj["robot"],
      (obj["alarms"] as List<Map<String, double>>)
        .map((e) => Alarm.fromMap(e))
        .toList()
    );

  static RobotAlarms fromjson(String jsonStr) =>
    RobotAlarms.fromMap(
      json.decode(jsonStr) as Map<String, dynamic>
    );

}

class Alarm {

  const Alarm(this.msg, this.turns);

  final String msg;
  final double turns;

  String tojson() =>
    json.encode({
      msg: turns 
    });

  static Alarm fromMap(Map<String, double> obj) {
    
    MapEntry<String, double> decoded =
      obj.entries
        .toList()[0];

    return Alarm(decoded.key, decoded.value);

  }

  static Alarm fromjson(String jsonStr) =>
    Alarm.fromMap(
      json.decode(jsonStr) as Map<String, double>
    );

}