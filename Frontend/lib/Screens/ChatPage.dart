import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/classes/AppColors.dart';
import 'package:rob_bhit/classes/ChatHelper.dart';
import 'package:rob_bhit/utils/helper.dart';

class ChatPage extends StatefulWidget {

  const ChatPage({
    super.key
  });

  @override
  State<ChatPage> createState() => _ChatPageState();

}

class _ChatPageState extends State<ChatPage> {

  late ChatHelper chatHelper;

  @override
  void initState() {

    super.initState();
    chatHelper = ChatHelper(setState);
    chatHelper.loadMessages();

  }

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MainAppBar(
        title: "Cobot",
        color: AppColors.pink,
      ),
      body: Chat(
        messages: messages,
        onPreviewDataFetched: chatHelper.handlePreviewDataFetched,
        onSendPressed: chatHelper.handleSendPressed,
        showUserAvatars: true,
        showUserNames: true,
        user: chatHelper.user,
        typingIndicatorOptions: TypingIndicatorOptions(
          typingUsers: chatHelper.typingUsers
        )
      )
    );
  
  }

}