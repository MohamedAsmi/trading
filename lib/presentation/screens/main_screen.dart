import 'package:flutter/material.dart';
import 'package:hero_app/presentation/screens/home_screen.dart';
import 'package:hero_app/presentation/screens/profile_screen.dart';
import 'package:hero_app/presentation/screens/select_asset_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    const SelectAssetScreen(),
    const ProfileScreen()
    // TradesScreen(),
    // StudyTimeScreen(),
    // ProfitLostScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "add new",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: "user",
          ),
        ],
      ),
    );
  }
}
