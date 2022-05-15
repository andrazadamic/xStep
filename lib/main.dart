import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import 'package:x_step/pages_page.dart';
import 'logic/users.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController usernameController = TextEditingController();
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "xStep",
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Text("xStep",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: const Color.fromRGBO(88, 135, 89, 1),
                  )),
              const SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Column(
                  children: [
                    const Text(
                      "Choose your username:",
                    ),
                    TextField(
                      decoration: InputDecoration(fillColor: Colors.amber),
                      controller: usernameController,
                    ),
                    const SizedBox(height: 30),
                    Builder(
                      builder: (context) => TextButton(
                        onPressed: () =>
                            userLogin(usernameController.text, context),
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(243, 193, 120, 1)),
                        ),
                        child: Text(
                          "ENTER",
                          style: GoogleFonts.rubik(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onStepCount(StepCount event) {
    /// Handle step count changed
    changePoints(event.steps);
    DateTime timeStamp = event.timeStamp;
  }
  void onPedestrianStatusChanged(PedestrianStatus event) {
    /// Handle status changed
    String status = event.status;
    DateTime timeStamp = event.timeStamp;
  }

  void userLogin(String username, BuildContext cont) {
    if (checkIfUserExists(username)) {
      setCurrentUser(username);
      Navigator.push(cont,
          MaterialPageRoute(builder: (cont) => PagesPage()));
    } else {
      createUser(username);
      setCurrentUser(username);
      Navigator.push(cont,
          MaterialPageRoute(builder: (cont) => PagesPage()));
    }
  }
}
