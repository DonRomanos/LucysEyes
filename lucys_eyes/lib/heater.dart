import 'package:flutter/material.dart';
import 'app_bar.dart';

class Heater extends StatelessWidget {
  const Heater({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Building");
    return const Scaffold(appBar: TopAppBar());
  }
}
