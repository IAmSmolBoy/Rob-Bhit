import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

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

  }

}