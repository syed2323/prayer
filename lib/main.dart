import 'package:flutter/material.dart';

import 'View/introScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //color: Colors.deepOrangeAccent,
      routes: {
        '/': (context) => IntroScreen(),
        // '/screen2': (context) => Screen2(),
      },
    );
  }
}

