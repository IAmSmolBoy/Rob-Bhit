import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rob_bhit/utils/helper.dart';

class AlarmNotifier extends ValueNotifier<List<RobotAlarms>> {

  AlarmNotifier(super.value);

  static void updatePrefs(List<RobotAlarms> alarmList) =>
    prefs.setString("alarms", 
      json.encode(
        alarmList.map(
          (RobotAlarms robotAlarms) =>
            robotAlarms.tojson()
        ).toList()
      )
    ); 

  void addRobot(RobotAlarms newValue) {

    super.value
      .add(newValue);
    
    updatePrefs(super.value);
  
  }

  void removeRobot(int index) {

    super.value
      .removeAt(index);
    
    updatePrefs(super.value);
  
  }

  void addAlarm(int robotIndex, Alarm newValue) {

    super.value[robotIndex]
      .add(newValue);
    
    updatePrefs(super.value);
  
  }


  void removeAlarm(int robotIndex, int alarmIndex) {

    super.value[robotIndex]
      .remove(alarmIndex);
    
    updatePrefs(super.value);
  
  }

  void editAlarm(int robotIndex, int alarmIndex, Alarm newValue) {

    super.value[robotIndex].alarms[alarmIndex] = newValue;
  
    updatePrefs(super.value);
  
  }

  String tojson() =>
    json.encode(
      super.value
        .map(
          (RobotAlarms robotAlarms) =>
            robotAlarms.tojson()
        ).toList()
      );

  static AlarmNotifier fromjson(String jsonStr) {

    List decoded = (json.decode(jsonStr) as List)
      .map((e) =>
        (json.decode(e) as Map<String, dynamic>)
          .map((key, value) =>
            MapEntry(
              key,
              key == "alarms" ?
                (value as List)
                  .map((e) {

                    return (json.decode(e) as Map)
                      .map(
                        (key, value) => MapEntry(key as String, value as double)
                      );
                  })
                  .toList() :
                value
            )
          )
      )
      .toList();

    return AlarmNotifier(
      decoded
        .map((e) => RobotAlarms.fromMap(e))
        .toList()
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
      (obj["alarms"] as List)
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
      json.decode(jsonStr)
    );
    

}