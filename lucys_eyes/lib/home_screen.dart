import 'package:flutter/material.dart';
import 'heater.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      debugPrint("counter : $_counter");
    });
  }

  void _gotoHeater() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Heater()));
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Row(
            children: [
              IconButton(
                  onPressed: _incrementCounter, icon: const Icon(Icons.home)),
              const Spacer(),
              IconButton(
                  onPressed: _gotoHeater, icon: const Icon(Icons.settings)),
              IconButton(
                  onPressed: _incrementCounter, icon: const Icon(Icons.refresh))
            ],
          ),
        ),
        body: GridView.count(
            crossAxisCount: 5,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: List.generate(
                7,
                (index) => TextButton.icon(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.thermostat),
                    label: const SizedBox.shrink()))));
  }
}
