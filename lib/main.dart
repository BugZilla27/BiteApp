import 'package:bite_delivery/tab_bar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BiteApp());
}

class BiteApp extends StatelessWidget {
  const BiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BiteApp', home: const TabBarScreen());
  }
}
