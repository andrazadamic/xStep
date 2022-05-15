import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_step/logic/users.dart';

class Coinflip extends StatefulWidget {
  const Coinflip({Key? key}) : super(key: key);

  @override
  State<Coinflip> createState() => _CoinflipState();
}

class _CoinflipState extends State<Coinflip> {
  TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "xStep",
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
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
                const Image(image: AssetImage('assets/casino_chip.png')),
                const SizedBox(height: 40),
                const Text(
                  "Enter the bet amount:",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF8FD694))
                        ),
                        onPressed: () => coinflip(int.parse(amountController.text), "heads", context),
                        child: const Text(
                          "Heads",
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        )
                    ),
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF8FD694))
                        ),
                        onPressed: () => coinflip(int.parse(amountController.text), "tails", context),
                        child: const Text(
                          "Tails",
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 40),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(243, 193, 120, 1)),
                  ),
                  child: Text(
                    "BACK",
                    style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void coinflip(int input, String choice, BuildContext context) {
    if (int.parse(getUsersPoints()) < input && input <= 0) {
      showAlertDialog(context, "Wrong money!");
      return;
    }
    Random rand = new Random();
    int random = rand.nextInt(2);
    if (random == 1) {
      showAlertDialog(context, "It was $choice");
      changePoints(input);
    } else {
      showAlertDialog(context, "It was not $choice");
      changePoints(-input);
    }
  }

  showAlertDialog(BuildContext context, String content) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Result"),
      content: Text(content),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}