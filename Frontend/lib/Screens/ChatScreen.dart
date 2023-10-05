import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/classes/AppColors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: "Chat Bot",
        color: AppColors.primary,
      ),
      body: Container(
        height: double.infinity,
        width: 350,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Chat Bubbles (BOT)
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text("Lorem Ipsum"),
                ),
              ),
              //Chat Bubbles (USER)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 177, 230, 255),
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text("Lorem Ipsum"),
                ),
              ),

              //User Input
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     height: 70,
              //     width: 400,
              //     decoration: BoxDecoration(
              //       color: AppColors.darkBlue,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: const Row(
              //       children: [
              //         TextField(
              //           decoration: InputDecoration(
              //             border: OutlineInputBorder(),
              //             labelText: 'Chat here...',
              //           ),
              //         )
              //       ]
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
