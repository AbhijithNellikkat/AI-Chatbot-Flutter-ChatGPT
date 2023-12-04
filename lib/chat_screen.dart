import 'package:chatbot/keyword_response.dart';
import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final chatBotConfig = IkChatBotConfig(
      useAsset: false,
      backgroundImage: 'https://cdn.wallpapersafari.com/54/0/HluF7g.jpg',
      //SMTP Rating to your mail Settings
      ratingIconYes: const Icon(Icons.star),
      ratingIconNo: const Icon(Icons.star_border),
      ratingIconColor: Colors.black,
      ratingBackgroundColor: Colors.white,
      ratingButtonText: 'Submit Rating',
      thankyouText: 'Thanks for your rating!',
      ratingText: 'Rate your experience:',
      ratingTitle: 'Thank you for using the chatbot!',
      body: 'This is a test email sent from Flutter and Dart.',
      subject: 'Test Rating',
      recipient: 'recipient@example.com',
      isSecure: false,
      senderName: 'Your Name',
      smtpUsername: 'Your Email',
      smtpPassword: 'your password',
      smtpServer: 'stmp.gmail.com',
      smtpPort: 587,
      //Settings to your system Configurations
      sendIcon: const Icon(Icons.send, color: Colors.black),
      userIcon: const Icon(Icons.person, color: Colors.white),
      botIcon: const Icon(Icons.flutter_dash, color: Colors.white),
      botChatColor: const Color.fromARGB(255, 81, 80, 80),
      delayBot: 100,
      closingTime: 1,
      delayResponse: 1,
      userChatColor: const Color.fromARGB(255, 245, 245, 245),
      waitingTime: 1,
      keywords: keywords,
      responses: responses,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      initialGreeting:
          "👋 Hello! \nWelcome to IkBot\nHow can I assist you today?",
      defaultResponse: "Sorry, I didn't understand your response.",
      inactivityMessage: "Is there anything else you need help with?",
      closingMessage: "This conversation will now close.",
      inputHint: 'Send a message',
      waitingText: 'Please wait...', backgroundAssetimage: '',
    );
    return ikchatbot(
      config: chatBotConfig,
    );
  }
}
