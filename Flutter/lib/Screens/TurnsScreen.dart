import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/utils/helper.dart';

class TurnsScreen extends StatefulWidget {
  const TurnsScreen({ super.key });

  @override
  State<TurnsScreen> createState() => _TurnsScreenState();
}

class _TurnsScreenState extends State<TurnsScreen> {

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
              text: " turns",
              style: textStyle,
            )
          ]
        ),
      ) 
    );

    List<Widget> widgetList = turns
      .entries
      .map(
        (entry) => jointText(
          entry.key,
          entry.value.toStringAsFixed(1)
        )
      )
      .toList();
    
    @override
    void initState() {
      super.initState();
      
      widgetList.addAll(
        [
          Container(height: screenSize.height / 50,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: resetTurns,
                child: Text("Reset")
              )
            ],
          )
        ]
      );
    }

    // return Scaffold(
    //   appBar: const MainAppBar(
    //     title: "Turns"
    //   ),
    //   body: Padding(
    //     padding: EdgeInsets.symmetric(
    //       horizontal: screenSize.width / 5,
    //       vertical: screenSize.height / 5
    //     ),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: widgetList,
    //     ),
    //   ),
    // );


    return StreamBuilder(
      stream: getJointTurns(),
      builder: (BuildContext context, AsyncSnapshot<Map<String, double>?> snapshot) {

        Widget body = Container();

        if (snapshot.hasError) {

          body = Center(
            child: Text("Something went wrong. ${snapshot.error}"),
          );

        }

        else if (snapshot.connectionState != ConnectionState.active) {

          body = const Center(
            child: CircularProgressIndicator(),
          );

        }

        else if (snapshot.hasData) {

          List<Widget> widgetList = snapshot
            .data!
            .entries
            .map(
              (entry) => jointText(
                entry.key,
                entry.value.toStringAsFixed(1)
              )
            )
            .toList();

          widgetList.addAll(
            [
              Container(height: screenSize.height / 50,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: resetTurns,
                    child: Text("Reset")
                  )
                ],
              )
            ] 
          );

          body = Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width / 5,
              vertical: screenSize.height / 5
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widgetList,
            ),
          );

        }

        return Scaffold(
          appBar: const MainAppBar(
            title: "Turns"
          ),
          body: body,
        );

      }
    );

  }

}