import 'package:flutter/material.dart';
import 'package:rob_bhit/utils/helper.dart';

class IPNotifier extends ValueNotifier<String> {

  IPNotifier(super.value);

  void set(String newIP) {

    super.value = newIP;
    prefs.setString("serverIP", newIP);

  }

}