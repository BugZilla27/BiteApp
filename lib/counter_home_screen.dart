import 'package:flutter/material.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});
  @override
  State<CounterHomeScreen> createState() {
    return _CounterHomeScreenState();
  }
}

class _CounterHomeScreenState extends State<CounterHomeScreen> {
  //Counter Variable
  int i = 0;

  //Switch Wdiget Variables
  bool switchState = false;

  //SwitchListTile Variable
  bool switchListTileState = false;
  String switchListTile = 'false';

  //RadioListTile Variable
  String? foodChoice = 'Burger';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Practice'), elevation: 5),
      body: Container(
        color: Colors.white60,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SwitchListTile
              //The widget was wraped in Material widget due to a color splash ink error
              Material(
                child: SwitchListTile(
                  value: switchListTileState,
                  title: Text(switchListTile),
                  onChanged: (val) {
                    setState(() {
                      switchListTileState = val;
                      val ? switchListTile = 'true' : switchListTile = 'false';
                    });
                  },
                ),
              ),

              //Switch widget
              Switch(
                value: switchState,
                onChanged: (val) {
                  setState(() {
                    switchState = val;
                  });
                },
              ),

              // Counter Widget
              Container(
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

              Material(
                child: RadioGroup(
                  groupValue: foodChoice,
                  onChanged: (food) {
                    setState(() {
                      foodChoice = food;
                    });
                  },
                  child: Column(
                    children: [
                      RadioListTile(value: 'Burger', title: Text('Burger')),
                      RadioListTile(value: 'Shawarma', title: Text('Shawarma')),
                      RadioListTile(value: 'Pizza', title: Text('Pizza')),
                      RadioListTile(value: 'Pasta', title: Text('Pasta')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
