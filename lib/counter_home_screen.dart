import 'package:flutter/material.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});
  @override
  State<CounterHomeScreen> createState() {
    return _CounterHomeScreenState();
  }
}

class _CounterHomeScreenState extends State<CounterHomeScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white60,
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            shape: BoxShape.rectangle,
            boxShadow: [BoxShadow(color: Colors.blueAccent)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    i++;
                  });
                },
                icon: const Icon(Icons.add),
              ),
              Text('Counter: $i'),
              IconButton(
                onPressed: () {
                  setState(() {
                    i--;
                  });
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
