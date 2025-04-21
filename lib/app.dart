import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build (BuildContext contex) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Home()
    );
  }
}