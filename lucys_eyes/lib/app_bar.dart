import 'package:flutter/material.dart';
import 'heater.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Row(
        children: [
          IconButton(
              onPressed: () => print("Home button pressed."),
              icon: const Icon(Icons.home)),
          const Spacer(),
          IconButton(
              onPressed: () => print("Settings button pressed."),
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () => print("Refresh button pressed."),
              icon: const Icon(Icons.refresh))
        ],
      ),
    );
  }
}
