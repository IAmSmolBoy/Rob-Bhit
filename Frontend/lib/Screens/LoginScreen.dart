import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rob_bhit/ScreenManager.dart';
import 'package:rob_bhit/Screens/SignUpScreen.dart';
import 'package:rob_bhit/Widgets/LoginButton.dart';
import 'package:rob_bhit/Widgets/LoginLayout.dart';
import 'package:rob_bhit/Widgets/SignUpButton.dart';
import 'package:rob_bhit/Widgets/MainTextField.dart';
import 'package:rob_bhit/classes/User.dart';
import 'package:rob_bhit/utils/helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ super.key });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  // Password Visibility
  bool visible = false;
  void toggleVisibility() {

    print("test");

    setState(() {
      visible = !visible;
    });
  }

  // Form Variables
  String email = "";
  String password = "";

  // Error Message
  String error = "";
  
  void login() {

    log('${serverIP.value}');

    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState!.save();

      try {

        post(
          Uri.parse("http://${serverIP.value}:5000/login"),
          headers: { "Content-Type": "application/json" },
          body: json.encode({
            "email": email,
            "password": password
          }),
        ).then((res) {

          Map body = json.decode(res.body);

          if (body.containsKey("error")) {

            setState(() {

              error = body["error"]!;

            });

          }
          else if (body.containsKey("name")) {

            prefs.setString("user", User.fromJson(res.body).toJson());

            Navigator.push(context, PageTransition(
              child: const ScreenManager(),
              type: PageTransitionType.fade
            ));

          }

        });
      }
      catch(e) {
        print(e);
      }
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
      formKey: _formKey,
      screenSize: screenSize,
      error: error,
      title: "Login",
      children: [
        MainTextField(
          labelText: "Email",
          prefixIcon: FontAwesomeIcons.envelope,
          onSaved: (String? value) => email = value ?? "",
          validator: emailValidator
        ),
        MainTextField(
          labelText: "Password",
          prefixIcon: FontAwesomeIcons.lock,
          visible: visible,
          toggleVisibility: toggleVisibility,
          last: true,
          onSaved: (String? value) => password = value ?? "",
          validator: (String? value) => 
            value == null || value == "" ?
              "Please enter your password" :
              null
        ),
        LoginButton(
          side: buttonSide,
          fixedSize: buttonSize,
          onClick: login
        ),
        SignUpButton(
          side: buttonSide,
          fixedSize: buttonSize,
          signUpPage: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: const SignUpScreen()
              )
            );
          }
        )
      ]
    );
  }
}