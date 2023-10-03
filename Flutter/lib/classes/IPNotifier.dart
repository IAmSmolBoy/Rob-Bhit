import 'package:flutter/material.dart';

class IPNotifier extends ValueNotifier<String> {

  IPNotifier(super.value);

  void set(String newIP) {

    super.value = newIP;

  }

}