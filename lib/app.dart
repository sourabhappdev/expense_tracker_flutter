import 'package:expense_tracker/app/module/detail/view/detail_screen.dart';
import 'package:expense_tracker/app/module/home/view/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _setScreen() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped);
      case 1:
        return DetailsScreen(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped);
      default:
        return HomeScreen(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _setScreen(),
    );
  }
}
