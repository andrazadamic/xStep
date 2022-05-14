import 'package:flutter/material.dart';
import 'package:x_step/pages_page.dart';
import 'logic/users.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "xStep",
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TextField(
                controller: usernameController,
              ),
              Builder(
                builder: (context) => TextButton(
                  onPressed: () => userLogin(usernameController.text, context),
                  child: const Text("Login")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void userLogin(String username, BuildContext cont) {
    if (checkIfUserExists(username)) {
      Navigator.push(cont, MaterialPageRoute(builder: (cont) => PagesPage(user: username)));
    } else {
      createUser(username);
      Navigator.push(cont, MaterialPageRoute(builder: (cont) => PagesPage(user: username)));
    }
  }
}
