import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const LucysEyes());
}

class LucysEyes extends StatelessWidget {
  const LucysEyes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucys Eyes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
