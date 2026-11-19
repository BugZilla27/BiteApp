import 'package:bite_delivery/counter_home_screen.dart';
//import 'package:bite_delivery/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BiteApp());
}

class BiteApp extends StatelessWidget {
  const BiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BiteApp', home: const CounterHomeScreen());
  }
}
