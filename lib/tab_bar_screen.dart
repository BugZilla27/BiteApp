import 'package:bite_delivery/counter_home_screen.dart';
import 'package:bite_delivery/home_screen.dart';
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
          title: Text(
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
            'Bite App',
          ),
          bottom: TabBar(
            indicatorColor: Colors.white70,
            tabs: [
              Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
                'login',
              ),
              Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
                'home_screen',
              ),
              Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
                'counter_home_screen',
              ),
            ],
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: TabBarView(children: [Homescreen(),
        CounterHomeScreen()]),
      ),
    );
  }
}
