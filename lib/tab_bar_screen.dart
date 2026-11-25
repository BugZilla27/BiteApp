import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() {
    return _TabBarScreen();
  }
}

class _TabBarScreen extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(style: TextStyle(color: Colors.white70), 'Bite App'),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
