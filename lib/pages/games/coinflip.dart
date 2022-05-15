import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Coinflip extends StatelessWidget {
  const Coinflip({Key? key}) : super(key: key);

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
            )
          ),
        ],
      ),
    );
  }
}
