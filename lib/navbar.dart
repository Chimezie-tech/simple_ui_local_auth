import 'package:flutter/material.dart';
import 'package:my_app/login.dart';
import 'package:my_app/screens/books.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/notifications.dart';
import 'package:my_app/screens/profile.dart';
import 'package:my_app/transfer.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[Home(), Profile(), Book(), NotifyMe()];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.green,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
          unselectedLabelStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'Books'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications')
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped),
    );
  }
}
