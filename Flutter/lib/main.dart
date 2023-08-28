import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rob_bhit/ScreenManager.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
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
    );

  }

}

ColorScheme lightTheme = const ColorScheme(
  primary: Color(0xff2aaae2),
  secondary: Color(0xff2DB680),
  error: Color(0xffFF483E),
  background: Colors.white,
  surface: Colors.white,
  brightness: Brightness.light,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onError: Colors.white,
  onBackground: Color(0xff2aaae2),
  onSurface: Color(0xff2aaae2)
);

ColorScheme darkTheme = const ColorScheme(
  primary: Color(0xff2699FB),
  secondary: Color(0xff2DB680),
  error: Color(0xffFF483E),
  background: Colors.black,
  surface: Colors.black,
  brightness: Brightness.dark,
  onPrimary: Colors.black,
  onSecondary: Colors.black,
  onError: Colors.black,
  onBackground: Color(0xff2699FB),
  onSurface: Color(0xff2699FB)
);