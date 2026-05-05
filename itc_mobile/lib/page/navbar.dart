import 'package:flutter/material.dart';
import 'home_page.dart';
import 'structure_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;

  final _pages = const [HomePage(), StructurePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,  
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,      
        showUnselectedLabels: false, 
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
        ],
      ),
    );
  }
}