import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rob_bhit/utils/helper.dart';

class JointNotifier extends ValueNotifier<List<Joint>> {

  JointNotifier(super.value);

  void set(int i, Joint newValue) {

    super.value[i] = newValue;

  }

  void setList(List<Joint> newValue) {

    super.value = newValue;

  }

}

class Joint {

  const Joint(
    this.angle,
    this.turns,
    this.color,
    this.jointNo
  );
  
  final int jointNo;
  final double turns, angle;
  final Color color;

  String toJson() => {
    "angle": angle,
    "turns": turns,
    "color": color,
    "jointNo": jointNo
  }.toString();

  static Joint fromMap(int i, Map<String, dynamic> decodedJson) {

    return Joint(
      decodedJson["angle"] ?? 0.0,
      decodedJson["turns"] ?? 0.0,
      jointColors[i],
      i + 1
    );

  }

  static Joint fromJson(int i, String jsonStr) {

    Map<String, dynamic> decodedJson = (json.decode(jsonStr) as Map<String, dynamic>);

    return Joint.fromMap(i, decodedJson);

  }

}