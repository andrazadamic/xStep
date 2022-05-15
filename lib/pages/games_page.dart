import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'games/coinflip.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "xStep",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF588759)),
                ),
                Icon(
                  Icons.person_rounded,
                  size: 30,
                )
              ],
            ),
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
            color: Color(0xFF0F1A20),
          ),
          const SizedBox(
            height: 30,
          ),
          IntrinsicHeight(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child:InkWell(
                              borderRadius: BorderRadius.circular(1000.0), //Something large to ensure a circle
                              onTap: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Coinflip())),
                              child: Column(
                                children: const [
                                  Text(
                                    "COINFLIP",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  SizedBox(height: 10,),
                                  Image(image: AssetImage('assets/casino_chip.png'))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child:InkWell(
                              borderRadius: BorderRadius.circular(1000.0), //Something large to ensure a circle
                              onTap: () => {},
                              child: Column(
                                children: const [
                                  Text(
                                    "HI/LOW",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  SizedBox(height: 10,),
                                  Image(image: AssetImage('assets/hi_low_arrows.png'))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
