import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final ChatUser chatUser =
      ChatUser(id: '1', firstName: 'Abhijith', lastName: 'Nellikkat');

  final ChatUser gptChatUser =
      ChatUser(id: '2', firstName: 'Chat', lastName: 'Bot');

  List<ChatMessage> messages = <ChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CHATBOT',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DashChat(
          messageListOptions: const MessageListOptions(),
          currentUser: chatUser,
          messages: messages,
          onSend: (ChatMessage chatMessage) {
            getChatResponse(chatMessage: chatMessage);
          },
        ),
      ),
    );
  }

  Future<void> getChatResponse({required ChatMessage chatMessage}) async {
    setState(() {
      messages.insert(0, chatMessage);
    });
  }
}
