import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9ecef),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsetsDirectional.only(top: 25, start: 15, end: 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              '630/53, Baghdad Al Ameria',
                              style: GoogleFonts.ubuntu(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down_rounded),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.orange,
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   padding: const EdgeInsets.all(5),
                    //   child: Row(
                    //     children: [
                    //       Icon(Icons.money),
                    //       Text('1999', style: GoogleFonts.ubuntu(fontSize: 15)),
                    //     ],
                    //   ),
                    // ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        side: BorderSide.none,
                      ),
                      icon: Icon(
                        Icons.monetization_on,
                        color: Colors.amberAccent,
                      ),
                      label: Text(
                        '1999 Bites',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white70,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Your order is ',
                      style: TextStyle(color: Colors.black38),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(35, 255, 193, 7),
                      ),
                      child: Text(
                        '15 minutes ',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                    Text('away!', style: TextStyle(color: Colors.black38)),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  //This will be replaced with search widget
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Icon(Icons.search, color: Color(0xffadb5bd)),
                        ),
                        Text(
                          'Search restaurant, dishes, stores...',
                          style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w100,
                            color: Color(0xffadb5bd),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
