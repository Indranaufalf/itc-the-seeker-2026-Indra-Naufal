import 'package:flutter/material.dart';
import 'page/navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITC Directory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0D3B1F),),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  ),
      ),
      home: const BottomNavBar(),
    );
  }
}