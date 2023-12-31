import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rob_bhit/Widgets/HomeCard.dart';
import 'package:rob_bhit/classes/Alarm.dart';
import 'package:rob_bhit/classes/HealthStatus.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

import '../classes/AppColors.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    this.setPage
  });

  final void Function(int)? setPage;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // final TextEditingController _controller = TextEditingController();
  // final List<ChatMessage> _messages = [];
  // late OpenAI? chatGPT;
  // bool _isImageSearch = false;
  // bool _isTyping = false;

  // @override
  // void initState() {
  //   chatGPT = OpenAI.instance.build(
  //     token: dotenv.env["API_KEY"],
  //     baseOption: HttpSetup(receiveTimeout: 60000));
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   chatGPT?.close();
  //   chatGPT?.genImgClose();
  //   super.dispose();
  // }

  // void _sendMessage() async {
  //   if (_controller.text.isEmpty) return;
  //   ChatMessage message = ChatMessage(
  //     text: _controller.text,
  //     sender: "user",
  //     isImage: false,
  //   );

  //   setState(() {
  //     _messages.insert(0, message);
  //     _isTyping = true;
  //   });

  //   _controller.clear();

  //   if (_isImageSearch) {
  //     final request = GenerateImage(message.text, 1, size: "256x256");

  //     final response = await chatGPT!.generateImage(request);
  //     Vx.log(response!.data!.last!.url!);
  //     insertNewData(response.data!.last!.url!, isImage: true);
  //   } else {
  //     final request =
  //         CompleteText(prompt: message.text, model: kTranslateModelV3);

  //     final response = await chatGPT!.onCompleteText(request: request);
  //     Vx.log(response!.choices[0].text);
  //     insertNewData(response.choices[0].text, isImage: false);
  //   }
  // }

  // void insertNewData(String response, {bool isImage = false}) {
  //   ChatMessage botMessage = ChatMessage(
  //     text: response,
  //     sender: "bot",
  //     isImage: isImage,
  //   );

  //   setState(() {
  //     _isTyping = false;
  //     _messages.insert(0, botMessage);
  //   });
  // }

  // Widget _buildTextComposer() {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: TextField(
  //           controller: _controller,
  //           onSubmitted: (value) => _sendMessage(),
  //           decoration: const InputDecoration.collapsed(
  //               hintText: "Question/description"),
  //         ),
  //       ),
  //       ButtonBar(
  //         children: [
  //           IconButton(
  //             icon: const Icon(Icons.send),
  //             onPressed: () {
  //               _isImageSearch = false;
  //               _sendMessage();
  //             },
  //           ),
  //           TextButton(
  //               onPressed: () {
  //                 _isImageSearch = true;
  //                 _sendMessage();
  //               },
  //               child: const Text("Generate Image"))
  //         ],
  //       ),
  //     ],
  //   );
  // }

  // Home Screen Graph
  List<HealthStatus> healthStatus = [];
  List<Alarm> cobotAlarms = alarms.value[0].alarms;

  List<HealthStatus> setHealth(List<Joint> jointList) {
    
    return jointList
      .asMap()
      .map(
        (i, joint) {
          
          double dueForReplacementAlarm = cobotAlarms[cobotAlarms.length - 1].turns;
          double health = 0.0;

          if (i < jointList.length) {

            health = (dueForReplacementAlarm - jointList[i].turns) / 100;

          }
          
          if (health < 0) {
            health = 0;
          }

          return MapEntry(
            i,
            HealthStatus(
              health,
              "Joint ${joint.jointNo}",
              joint.color
            )
          );

        }
      )
      .values
      .toList();

  }

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 10 / 100,
          vertical: screenSize.height * 2 / 100
        ),
        child: Column(
          children: [
            SizedBox(
                width: 250,
                height: 150,
                child: Image.asset('images/Logo.png'),
            ),

            //Home buttons
            Text(
              "Navigation",
              style: titleStyle,
            ),
            Container(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeCard(
                  icon: Icons.monitor_heart_outlined,
                  title: 'Health',
                  color: AppColors.pink,
                  onTap: () {
                    widget.setPage!(0);
                  }
                ),
                HomeCard(
                  icon: FontAwesomeIcons.gaugeSimpleHigh,
                  title: 'OEE',
                  color: AppColors.orange,
                  onTap: () {
                    widget.setPage!(1);
                  }
                ),
                HomeCard(
                  icon: Icons.warning,
                  title: 'Alarms',
                  color: AppColors.red,
                  onTap: () {
                    widget.setPage!(3);
                  }
                ),
                HomeCard(
                  icon: Icons.recycling,
                  title: 'Green',
                  color: AppColors.secondary,
                  onTap: () {
                    widget.setPage!(4);
                  }
                ),
              ],
            ),
            Container(height: 20,),

            //                                   Robot health graph(s)
            ValueListenableBuilder(
              valueListenable: joints,
              builder: (context, value, child) {

                healthStatus = setHealth(value);

                return Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(
                      title: AxisTitle(
                        text: 'Health Status (%)',
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        alignment: ChartAlignment.center
                      )
                    ),
                    series: <ChartSeries>[
                      BarSeries<HealthStatus, String>(
                        dataSource: healthStatus,
                        xValueMapper: (HealthStatus status, _) => status.jointNo,
                        yValueMapper: (HealthStatus status, _) => status.jointHealth,
                        pointColorMapper: (HealthStatus status, _) => status.colorStatus,
                        width: 0.6,
                        animationDuration: 0,
                        animationDelay: 0
                      ),
                    ],
                  ),
                );

              }
            ),
          ],
        ),
      ) 
    );
  }
}