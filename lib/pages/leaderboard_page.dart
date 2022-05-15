import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../logic/users.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                          splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                      child: const Text(
                        "Points",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                          splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                      child: const Text(
                        "Steps",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 20.0),
      Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
        child: Container(
            height: MediaQuery.of(context).size.height - 350,
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
                color: const Color(0xFFF3C178),
                borderRadius: BorderRadius.circular(10)),
            child: createLeaderboard()),
      )
    ]);
  }
}
