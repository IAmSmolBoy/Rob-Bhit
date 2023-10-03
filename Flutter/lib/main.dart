import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rob_bhit/ScreenManager.dart';
import 'package:rob_bhit/Screens/LoginScreen.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  await dotenv.load(fileName: ".env");

  prefs = await SharedPreferences.getInstance();

  getAlarms();
  lightMode.set(prefs.getBool("lightMode") ?? true);

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<String>(
      valueListenable: serverIP,
      builder: (context, value, child) {

        return StreamBuilder<Joints>(
          stream: getJoints(value),
          builder: (context, snapshot) {

            if (snapshot.hasError) {

              print(snapshot.error);

            }

            else if (snapshot.hasData) {

              joints.set(snapshot.data!);

            }

            return ValueListenableBuilder(
              valueListenable: lightMode,
              builder: (context, value, child) =>
        
                MaterialApp(
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    colorScheme: lightTheme,
                    scaffoldBackgroundColor: lightTheme.background
                  ),
                  darkTheme: ThemeData(
                    colorScheme: darkTheme,
                    scaffoldBackgroundColor: darkTheme.background
                  ),
                  themeMode: lightMode.theme,
                  home: 
                    prefs.getString("user") != null ?
                      const ScreenManager() :
                      const LoginScreen(),
                  // home: const ScreenManager(),
                  // home: const Test(),
                  // home: const TestStateful(),
                )
        
            );
          }

        );

      }
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
  onPrimary: Colors.black,
  onSecondary: Colors.black,
  onError: Colors.black,
  onBackground: Colors.black,
  onSurface: AppColors.primary
);

ColorScheme darkTheme = const ColorScheme(
  primary: AppColors.primaryDark,
  secondary: AppColors.secondary,
  error: AppColors.red,
  background: Color(0xFF222222),
  surface: Color(0xFF222222),
  brightness: Brightness.dark,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onError: Colors.white,
  onBackground: Colors.white,
  onSurface: AppColors.primaryDark
);