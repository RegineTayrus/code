import 'package:activity_5a/conversation.dart';
import 'package:activity_5a/message.dart';
import 'package:activity_5a/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

 
  final List<Widget> _pages = [
     Conversations(),
     Messages(),
     Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'),


          BottomNavigationBarItem(
            icon: Icon(Icons.message), 
            label: 'Messages'),

            
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
             label: 'Profile'),
        ],
      ),
    );
  }
}