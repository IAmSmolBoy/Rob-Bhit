import 'package:flutter/material.dart';

class JointNotifier extends ValueNotifier<Joints> {

  JointNotifier(super.value);

  void set(Joints newValue) {

    super.value = newValue;

  }

}

class Joints {

  const Joints(this.angles, this.turns);
  
  final List<Angles> angles;
  final List<JointTurns> turns;

}

class Angles {

  const Angles(this.joint, this.angle, {
    this.color
  });

  final String joint;
  final double angle;
  final Color? color;

}

class JointTurns {

  const JointTurns(this.joint, this.turns);

  final String joint;
  final double turns;

}