import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rob_bhit/classes/AppColors.dart';

class ChatWindow extends StatefulWidget {

  const ChatWindow({
    super.key,
    required this.screenSize,
    required this.messages
  });

  final Size screenSize;
  final List<String> messages;

  @override
  State<ChatWindow> createState() => _ChatWindowState();

}

class _ChatWindowState extends State<ChatWindow> {

  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      width: widget.screenSize.width - 50,
      height: widget.screenSize.height - widget.screenSize.height * 2 / 100 - 450,
      decoration: BoxDecoration(
        color: AppColors.oeeText,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
            children: [
              Column(
                children: widget.messages.map((msg) => Text(msg))
                  .toList(),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        // TextField(
                        //   controller: _controller,
                        // )
                      ]
                    ),
                  ),
                ],
              )
            ],
          )
        ),
      );
  
  }
}