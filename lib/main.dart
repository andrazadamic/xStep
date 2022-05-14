import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/games_page.dart';
import 'pages/leaderboard_page.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    LeaderboardPage(),
    GamesPage()
  ];

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "xStep",
      home: SafeArea(
        child: Scaffold(
          body: MyApp._pages.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amber.shade700,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart), label: "Leaderboard"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad), label: "Games"),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
