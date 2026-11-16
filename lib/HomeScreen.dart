import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(179, 214, 214, 214),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '630/53, Baghdad Al Ameria',
              style: GoogleFonts.ubuntu(fontSize: 15),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down_rounded),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(Icons.money),
                  Text('1999', style: GoogleFonts.ubuntu(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.money_rounded),)
        ],
      ),
      body: Scaffold(),
    );
  }
}
