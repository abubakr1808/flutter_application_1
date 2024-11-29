import 'package:figmabekturagay/src/presentation/views/obhavo.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Obhavo(),
    );
  }
}
