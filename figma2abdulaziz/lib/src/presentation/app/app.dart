import 'package:figma2abdulaziz/src/presentation/chat/chat_app.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Chatpp(),
    );
  }
}
