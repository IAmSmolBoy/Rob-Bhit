import 'dart:convert';

import 'package:http/http.dart';

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

bool extract = false;

void stopExtract() => extract = false;

Stream<Map<String, double>> getCobotData() async* {

  extract = true;

  while (extract) {

    Response response = await get(
      Uri(
        scheme: "http",
        host: "192.168.250.100",
        // host: "192.168.109.2",
        // host: "10.0.2.2",
        // host: "10.252.1.247",
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