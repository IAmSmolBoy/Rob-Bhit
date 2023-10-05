import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:rob_bhit/classes/Alarm.dart';
import 'package:rob_bhit/classes/Joints.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:uuid/uuid.dart';

class ChatHelper {
  
  final void Function(void Function()) setState;
  final user = const User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
    firstName: "Hong",
    lastName:  "Rui"
  );
  final robot = const User(
    id: 'robot',
    firstName: "Rob-Bhit"
  );
  final queries = [
    "How are you feeling?",
    "Show diagnostic options"
  ];
  List<User> typingUsers = [];

  ChatHelper(this.setState);

  void _addMessage(Message message) {

    post(
      Uri(
        host: serverIP.value,
        port: 5000,
        path: "/send-message",
        scheme: "http"
      ),
      headers: { "Content-Type": "application/json" },
      body: jsonEncode(message.toJson())
    );

    setState(() {

      messages.insert(0, message);
      typingUsers = [];

    });
  
  }

  void handlePreviewDataFetched(
    TextMessage message,
    PreviewData previewData,
  ) {

    final index = messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (messages[index] as TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {

      messages[index] = updatedMessage;

    });
  
  }

  void handleSendPressed(PartialText message) {

    final textMessage = TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);

    generateResponse(message.text);
  
  }

  void loadMessages() async {

    final response = await get(
      Uri(
        host: serverIP.value,
        port: 5000,
        path: "/messages",
        scheme: "http"
      )
    );

    final messageResponse = (jsonDecode(response.body) as List)
      .map((e) => Message.fromJson(e as Map<String, dynamic>))
      .toList();

    messageResponse.sort((a, b) => (b.createdAt ?? 0) - (a.createdAt ?? 0));

    setState(() {

      messages = messageResponse;

    });
  
  }

  Future<void> generateResponse(String query) async {

    String response = ".";
    double health = (
      joints
        .value
        .map((joint) => joint.turns)
        .reduce((value, element) => value + element)
      ) / 6;

    if (
      query
        .split("")
        .every((e) => int.tryParse(e) != null)
    ) {

      switch(int.parse(query)) {

        case 1:
          response = joints
            .value
            .asMap()
            .map((i, joint) => MapEntry(i, "Joint $i: ${joint.angle}°"))
            .values
            .join("\n");
          break;

        case 2:
          response = joints
            .value
            .asMap()
            .map((i, joint) => MapEntry(i, "Joint $i: ${joint.turns}turns"))
            .values
            .join("\n");
          break;

        case 3:

          response = "";
          int i = 1;

          for (Joint joint in joints.value) {

            String condition = "";

            for (Alarm alarm in alarms.value[0].alarms.reversed) {

              if (joint.turns > alarm.turns) {

                condition = alarm.msg;
                break;

              }

            }
            
            if (condition == "") {

              condition = "Good Condition";

            }

            response += "Joint $i: $condition\n";

            i++;

          }
          break;

      }

    }
    else {

      int index = queries.indexOf(query);

      switch (index) {

        case 0:

          response = "I'm feeling ";

          if (health > alarms.value[0].alarms[2].turns) response += "critically ill.";
          else if (health > alarms.value[0].alarms[1].turns) response += "sick.";
          else if (health > alarms.value[0].alarms[0].turns) response += "unwell.";
          else  response += "great!";
          break;

        case 1:

          response = "1. Joint Angles\n2. Joint Turns\n3. Alarms";
          break;

      }
      
    }

    if (response != ".") {

      var rng = Random();

      setState(() => typingUsers.add(robot));

      await Future.delayed(Duration(seconds: rng.nextInt(3) + 3));

      Message message = TextMessage(
        author: robot,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        text: response,
      );

      _addMessage(message);

    }

  }
}