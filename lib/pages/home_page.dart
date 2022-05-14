import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "Xstep",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "STEPS TODAY",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "10000",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const VerticalDivider(
                  thickness: 1,
                  color: Color(0xFF0F1A20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "POINTS TODAY",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "10000",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF8FD694),
                  borderRadius: BorderRadius.circular(10)),
              child: const SizedBox(
                height: 150,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "graf",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xFF0F1A20),
            indent: 15,
            endIndent: 15,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Challenges",
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    width: 120,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(5, 5),
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Choose a Challenge",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
