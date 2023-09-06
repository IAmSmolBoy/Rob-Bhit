import 'dart:convert';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:rob_bhit/classes/AppColors.dart';

class Test extends StatelessWidget {

  const Test({ super.key });

  // Future<Map<String, dynamic>> getData() async {
  //   Response response = await get(
  //     Uri(
  //       scheme: "http",
  //       host: dotenv.env['SERVERIP'],
  //       port: 5000,
  //       path: "/current/cobot"
  //     )
  //   );
    
  //   return json.decode(response.body);
  // }

  // Stream<Map<String, dynamic>> getData() async* {

  //   while (true) {

  //     Response response = await get(
  //       Uri(
  //         scheme: "http",
  //         host: dotenv.env['SERVERIP'],
  //         port: 5000,
  //         path: "/current/cobot"
  //       )
  //     );
    
  //     Map body = json.decode(response.body);
  //     Map<String, double> data = body.map<String, double>((key, value) => MapEntry("$key", value));
      
  //     yield data;

  //   }

  // }

  @override
  Widget build(BuildContext context) {

    // return StreamBuilder(
    //   stream: getData(),
    //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //     if (snapshot.connectionState != ConnectionState.done) {
    //       // Return what ur user sees when loading
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //     else if (snapshot.hasError) {
    //       // Return what ur user sees when an error occurs
    //       return Center(child: Text("Something went wrong. ${snapshot.error}"));
    //     }
    //     else if (snapshot.hasData) {
    //       // Return ur screen
    //       return Screen();
    //     }
    //     else {
    //       return Container();
    //     }
    //   }
    // );

    // return FutureBuilder(
    //   future: getData(),
    //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //     if (snapshot.connectionState != ConnectionState.done) {
    //       // Return what ur user sees when loading
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //     else if (snapshot.hasError) {
    //       // Return what ur user sees when an error occurs
    //       return Center(child: Text("Something went wrong. ${snapshot.error}"));
    //     }
    //     else if (snapshot.hasData) {
    //       // Return ur screen
    //       return Screen();
    //     }
    //     else {
    //       return Container();
    //     }
    //   }
    // );

    return Container();

    // return AspectRatio(
    //   aspectRatio: 1.3,
    //   child: Row(
    //     children: <Widget>[
    //       const SizedBox(
    //         height: 18,
    //       ),
    //       Expanded(
    //         child: AspectRatio(
    //           aspectRatio: 1,
    //           child: PieChart(
    //             PieChartData(
    //               pieTouchData: PieTouchData(
    //                 touchCallback: (FlTouchEvent event, pieTouchResponse) {
    //                   setState(() {
    //                     if (!event.isInterestedForInteractions ||
    //                         pieTouchResponse == null ||
    //                         pieTouchResponse.touchedSection == null) {
    //                       touchedIndex = -1;
    //                       return;
    //                     }
    //                     touchedIndex = pieTouchResponse
    //                         .touchedSection!.touchedSectionIndex;
    //                   });
    //                 },
    //               ),
    //               borderData: FlBorderData(
    //                 show: false,
    //               ),
    //               sectionsSpace: 0,
    //               centerSpaceRadius: 40,
    //               sections: showingSections(),
    //             ),
    //           ),
    //         ),
    //       ),
    //       const Column(
    //         mainAxisAlignment: MainAxisAlignment.end,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Indicator(
    //             color: AppColors.primary,
    //             text: 'First',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 4,
    //           ),
    //           Indicator(
    //             color: AppColors.orange,
    //             text: 'Second',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 4,
    //           ),
    //           Indicator(
    //             color: AppColors.darkblue,
    //             text: 'Third',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 4,
    //           ),
    //           Indicator(
    //             color: AppColors.secondary,
    //             text: 'Fourth',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 18,
    //           ),
    //         ],
    //       ),
    //       const SizedBox(
    //         width: 28,
    //       ),
    //     ],
    //   ),
    // );

  }

  // List<PieChartSectionData> showingSections() {
  //   return List.generate(4, (i) {
  //     final isTouched = i == touchedIndex;
  //     final fontSize = isTouched ? 25.0 : 16.0;
  //     final radius = isTouched ? 60.0 : 50.0;
  //     const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
  //     switch (i) {
  //       case 0:
  //         return PieChartSectionData(
  //           color: AppColors.primary,
  //           value: 40,
  //           title: '40%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 1:
  //         return PieChartSectionData(
  //           color: AppColors.orange,
  //           value: 30,
  //           title: '30%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 2:
  //         return PieChartSectionData(
  //           color: AppColors.darkblue,
  //           value: 15,
  //           title: '15%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 3:
  //         return PieChartSectionData(
  //           color: AppColors.secondary,
  //           value: 15,
  //           title: '15%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       default:
  //         throw Error();
  //     }
  //   });
  // }

}

// class Indicator extends StatelessWidget {

//   const Indicator({
//     super.key,
//     required this.color,
//     required this.text,
//     required this.isSquare,
//     this.size = 16,
//     this.textColor,
//   });

//   final Color color;
//   final String text;
//   final bool isSquare;
//   final double size;
//   final Color? textColor;

//   @override
//   Widget build(BuildContext context) {

//     return Row(
//       children: <Widget>[
//         Container(
//           width: size,
//           height: size,
//           decoration: BoxDecoration(
//             shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
//             color: color,
//           ),
//         ),
//         const SizedBox(
//           width: 4,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             color: textColor,
//           ),
//         )
//       ],
//     );

//   }

// }

class TestStateful extends StatefulWidget {
  const TestStateful({super.key});

  @override
  State<TestStateful> createState() => _TestStatefulState();
}

class _TestStatefulState extends State<TestStateful> {

  // int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {

    return Container();

    // return AspectRatio(
    //   aspectRatio: 1.3,
    //   child: Row(
    //     children: <Widget>[
    //       const SizedBox(
    //         height: 18,
    //       ),
    //       Expanded(
    //         child: AspectRatio(
    //           aspectRatio: 1,
    //           child: PieChart(
    //             PieChartData(
    //               pieTouchData: PieTouchData(
    //                 touchCallback: (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
    //                   setState(() {
    //                     if (
    //                       !event.isInterestedForInteractions ||
    //                       pieTouchResponse == null ||
    //                       pieTouchResponse.touchedSection == null
    //                     ) {
    //                       touchedIndex = -1;
    //                     }
    //                     else {
    //                       touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
    //                     }

    //                   });
    //                 },
    //               ),
    //               borderData: FlBorderData(
    //                 show: false,
    //               ),
    //               sectionsSpace: 0,
    //               centerSpaceRadius: 40,
    //               sections: showingSections(),
    //             ),
    //           ),
    //         ),
    //       ),
    //       const Column(
    //         mainAxisAlignment: MainAxisAlignment.end,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Indicator(
    //             color: AppColors.primary,
    //             text: 'First',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 4,
    //           ),
    //           Indicator(
    //             color: AppColors.orange,
    //             text: 'Second',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 4,
    //           ),
    //           Indicator(
    //             color: AppColors.darkblue,
    //             text: 'Third',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 4,
    //           ),
    //           Indicator(
    //             color: AppColors.secondary,
    //             text: 'Fourth',
    //             isSquare: true,
    //           ),
    //           SizedBox(
    //             height: 18,
    //           ),
    //         ],
    //       ),
    //       const SizedBox(
    //         width: 28,
    //       ),
    //     ],
    //   ),
    // );

  }

  // List<PieChartSectionData> showingSections() {

  //   return List.generate(4, (i) {
  //     final isTouched = i == touchedIndex;
  //     final fontSize = isTouched ? 25.0 : 16.0;
  //     final radius = isTouched ? 60.0 : 50.0;
  //     const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
  //     switch (i) {
  //       case 0:
  //         return PieChartSectionData(
  //           color: AppColors.primary,
  //           value: 40,
  //           title: '40%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 1:
  //         return PieChartSectionData(
  //           color: AppColors.orange,
  //           value: 30,
  //           title: '30%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 2:
  //         return PieChartSectionData(
  //           color: AppColors.darkblue,
  //           value: 15,
  //           title: '15%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 3:
  //         return PieChartSectionData(
  //           color: AppColors.secondary,
  //           value: 15,
  //           title: '15%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             // color: AppColors.mainTextColor1,
  //             shadows: shadows,
  //           ),
  //         );
  //       default:
  //         throw Error();
  //     }
  //   });

  // }

}