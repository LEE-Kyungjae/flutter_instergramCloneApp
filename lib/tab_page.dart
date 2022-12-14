import 'package:flutter/material.dart';
import 'package:instergramclone/home_page.dart';
import 'package:instergramclone/search_page.dart';

class TabPage extends StatefulWidget {

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedPageIndex = 0;

  List _pages=[
    HomePage(),
    SearchPage(),
    Text('page3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedPageIndex],),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedPageIndex,
        fixedColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',
      ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),label: 'Account',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }
}
