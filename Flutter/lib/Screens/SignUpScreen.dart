import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:rob_bhit/Widgets/LoginLayout.dart';
import 'package:rob_bhit/Widgets/SignUpButton.dart';
import 'package:rob_bhit/Widgets/SignUpLoginTextField.dart';
import 'package:rob_bhit/utils/helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ super.key });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _formKey = GlobalKey<FormState>();

  // Password Visibility
  bool visible = false;
  bool visible2 = false;
  void toggleVisibility() {
    setState(() {
      visible = !visible;
    });
  }
  void toggleVisibility2() {
    setState(() {
      visible2 = !visible2;
    });
  }

  // Error Message
  String error = "";

  // Form FIeld Values
  String name = "";
  String email = "";
  String password = "";

  // Sign Up Button onCLick
  void signUp() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState!.save();

      String body = json.encode({
        "name": name,
        "email": email,
        "password": password
      });

      post(
        Uri.parse("http://10.0.2.2:5000/register"),
        body: body,
        headers: { "Content-Type": "application/json" }
      ).then((res) {

        Map body = json.decode(res.body);

        if (body.containsKey("error")) {
          setState(() {
            error = body["error"]!;
          });
        }
        else if (body.containsKey("message")) {
          
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    // Media Query Data
    Size screenSize = MediaQuery.of(context).size;
    Color priColor = Theme.of(context).colorScheme.primary;

    // Button Styles
    BorderSide buttonSide = BorderSide(color: priColor);
    Size buttonSize = Size(screenSize.width, screenSize.height * .05);

    return LoginLayout(
      screenSize: screenSize,
      formKey: _formKey,
      error: error,
      children: [
        SignUpLoginTextField(
          labelText: "Name",
          color: priColor,
          prefixIcon: FontAwesomeIcons.user,
          onSaved: (String? value) => name = value ?? "",
          validator: (String? value) => 
            value == null || value == "" ?
              "Please enter your name" :
              null
        ),
        SignUpLoginTextField(
          labelText: "Email",
          color: priColor,
          prefixIcon: FontAwesomeIcons.envelope,
          onSaved: (String? value) => email = value ?? "",
          validator: emailValidator
        ),
        SignUpLoginTextField(
          labelText: "Password",
          color: priColor,
          prefixIcon: FontAwesomeIcons.lock,
          visible: visible,
          toggleVisibility: toggleVisibility,
          onChanged: (String? value) => password = value ?? "",
          validator: (String? value) => 
            value == null || value == "" ?
              "Please enter your password" :
              null
        ),
        SignUpLoginTextField(
          labelText: "Confirm Password",
          color: priColor,
          prefixIcon: FontAwesomeIcons.lock,
          visible: visible2,
          last: true,
          toggleVisibility: toggleVisibility2,
          validator: (String? value) =>
            password != value ?
              "Password does not match" :
              null
        ),
        SignUpButton(
          side: buttonSide,
          fixedSize: buttonSize,
          signUp: signUp,
        )
      ],
    );

  }
}