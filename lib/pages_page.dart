import 'package:flutter/material.dart';
import 'pages/games_page.dart';
import 'pages/leaderboard_page.dart';
import 'pages/home_page.dart';

class PagesPage extends StatefulWidget {
  const PagesPage({Key? key, required this.user}) : super(key: key);

  final String user;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    LeaderboardPage(),
    GamesPage()
  ];

  @override
  State<PagesPage> createState() => _PagesPageState();
}

class _PagesPageState extends State<PagesPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "xStep",
      home: Scaffold(
        body: SafeArea(
          child: PagesPage._pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber.shade700,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Leaderboard"),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: "Games"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
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
