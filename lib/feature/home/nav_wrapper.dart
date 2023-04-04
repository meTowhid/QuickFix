import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/feature/calendar/calendar_screen.dart';
import 'package:quick_fix/feature/details/details_screen.dart';
import 'package:quick_fix/feature/dummy/dummy_screen.dart';
import 'package:quick_fix/feature/home/home_screen.dart';

class NavigationWrapper extends StatefulWidget {
  const NavigationWrapper({super.key});

  @override
  State<NavigationWrapper> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NavigationWrapper> {
  final _screens = <Widget>[
    const HomeScreen(),
    DummyScreen('Booking'),
    const CalenderScreen(),
    DummyScreen('Inbox'),
    // DummyScreen('Profile'),
    const DetailsScreen(),
  ];
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Booking',
            activeIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_outline),
          ),
          BottomNavigationBarItem(
            label: 'Calendar',
            activeIcon: Icon(Icons.calendar_today),
            icon: Icon(Icons.calendar_today_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Inbox',
            activeIcon: Icon(Icons.chat_bubble),
            icon: Icon(Icons.chat_bubble_outline),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.blue,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      body: _screens[_selectedIndex],
    );
  }
}
