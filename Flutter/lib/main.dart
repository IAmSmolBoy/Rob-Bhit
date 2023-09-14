import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rob_bhit/ScreenManager.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  await dotenv.load(fileName: ".env");

  prefs = await SharedPreferences.getInstance();

  getAlarms();

  runApp(const MyApp());

  getJoints();

}

class MyApp extends StatelessWidget {

  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: lightTheme),
      darkTheme: ThemeData(colorScheme: darkTheme),
      home: const ScreenManager(),
      // home: const Test(),
      // home: const TestStateful(),
    );

  }

}

ColorScheme lightTheme = const ColorScheme(
  primary: AppColors.primary,
  secondary: AppColors.secondary,
  error: AppColors.red,
  background: Colors.white,
  surface: Colors.white,
  brightness: Brightness.light,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onError: Colors.white,
  onBackground: AppColors.primary,
  onSurface: AppColors.primary
);

ColorScheme darkTheme = const ColorScheme(
  primary: AppColors.primaryDark,
  secondary: AppColors.secondary,
  error: AppColors.red,
  background: Colors.black,
  surface: Colors.black,
  brightness: Brightness.dark,
  onPrimary: Colors.black,
  onSecondary: Colors.black,
  onError: Colors.black,
  onBackground: AppColors.primaryDark,
  onSurface: AppColors.primaryDark
);