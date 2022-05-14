import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "10000",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const VerticalDivider(
                thickness: 2,
                color: Color(0xFF0F1A20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "POINTS TODAY",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
      ],
    );
  }
}
