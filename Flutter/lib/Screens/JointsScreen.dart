import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/utils/helper.dart';

class JointsScreen extends StatefulWidget {
  const JointsScreen({ super.key });

  @override
  State<JointsScreen> createState() => _JointsScreenState();
}

class _JointsScreenState extends State<JointsScreen> {

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    TextStyle textStyle = const TextStyle(
      fontSize: 24,
      color: Colors.black
    );

    Widget jointText(String title, String val) => Padding(
      padding: EdgeInsets.only(
        top: screenSize.height / 100
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title: ",
              style: textStyle,
            ),
            TextSpan(
              text: val,
              style: textStyle.copyWith(
                color: Theme.of(context).colorScheme.primary
              ),
            ),
            TextSpan(
              text: " °",
              style: textStyle,
            )
          ]
        ),
      ) 
    );

    return StreamBuilder(
      stream: getCobotData(),
      builder: (BuildContext context, AsyncSnapshot<Map<String, double>> snapshot) {

        Widget body = Container();

        if (snapshot.hasError) {
          
          print(snapshot.error);
          
        }

        if (snapshot.hasData) {

          List<Widget> widgetList =
            snapshot
              .data!
              .entries
              .map(
                (entry) => jointText(
                  entry.key,
                  entry.value.toStringAsFixed(1)
                )
              )
              .toList();

          body = Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width / 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height / 50
                      ),
                      child: const Text(
                        "6 Axis Cobot",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width / 10,
                    vertical: screenSize.height / 50
                  ),
                  child: Image.asset("images/Cobot Image.png")
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Joint Data",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    ),
                  ]
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenSize.height / 50
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: widgetList,
                      ),
                    ],
                  ) 
                )
              ]
            ),
          );
        }

        else {

          body = const Center(
            child: CircularProgressIndicator()
          );

        }

        return Scaffold(
          appBar: const MainAppBar(title: "Joints"),
          body: SingleChildScrollView(child: body,)
        );
      }
    );

  }

}