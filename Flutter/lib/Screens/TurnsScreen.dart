import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TurnsScreen extends StatefulWidget {
  const TurnsScreen({ super.key });

  @override
  State<TurnsScreen> createState() => _TurnsScreenState();
}

class Turns {
  final double turnsData1;
  final double turnsData2;
  final double turnsData3;
  final double turnsData4;
  final double turnsData5;
  final double turnsData6;
  final String time;
  Turns(this.turnsData1, this.turnsData2, this.turnsData3, this.turnsData4, this.turnsData5, this.turnsData6, this.time);
}

class _TurnsScreenState extends State<TurnsScreen> {

  final List<Turns> turnData = <Turns> [
    Turns(89, 36, 12, 56, 100, 210, '6AM'),
    Turns(123, 796, 92, 76, 840, 320, '12PM'),
    Turns(19, 96, 32, 566, 190, 20, '6PM'),
    Turns(212, 16, 120, 236, 10, 120, '12AM')
  ];

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

        print(snapshot);

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
            padding: const EdgeInsets.symmetric(
              // horizontal: screenSize.width / 5,
              // vertical: screenSize.height / 5
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: SfCartesianChart(
                      title: ChartTitle(
                        text: 'Joint Turns Data',
                      ),
                      legend: const Legend(
                        width: '300',
                        isVisible: true, 
                        position: LegendPosition.bottom,
                        overflowMode: LegendItemOverflowMode.wrap
                      ),
                      primaryXAxis: CategoryAxis(
                        title: AxisTitle(text: 'Time (6 hr)')
                      ),
                      series: <ChartSeries>[
                        LineSeries<Turns, String> (
                          name: 'Joint 1',
                          dataSource: turnData,
                          xValueMapper: (Turns data, _) => data.time,
                          yValueMapper: (Turns data, _) => data.turnsData1
                        ),
                        LineSeries<Turns, String> (
                          name: 'Joint 2',
                          dataSource: turnData,
                          xValueMapper: (Turns data, _) => data.time,
                          yValueMapper: (Turns data, _) => data.turnsData2
                        ),
                        LineSeries<Turns, String> (
                          name: 'Joint 3',
                          dataSource: turnData,
                          xValueMapper: (Turns data, _) => data.time,
                          yValueMapper: (Turns data, _) => data.turnsData3
                        ),
                        LineSeries<Turns, String> (
                          name: 'Joint 4',
                          dataSource: turnData,
                          xValueMapper: (Turns data, _) => data.time,
                          yValueMapper: (Turns data, _) => data.turnsData4
                        ),
                        LineSeries<Turns, String> (
                          name: 'Joint 5',
                          dataSource: turnData,
                          xValueMapper: (Turns data, _) => data.time,
                          yValueMapper: (Turns data, _) => data.turnsData5
                        ),
                        LineSeries<Turns, String> (
                          name: 'Joint 6',
                          dataSource: turnData,
                          xValueMapper: (Turns data, _) => data.time,
                          yValueMapper: (Turns data, _) => data.turnsData6
                        ),
                      ]
                    ),
                ),
              ],
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