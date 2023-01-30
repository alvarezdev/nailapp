import 'package:flutter/material.dart';
import 'package:nailapp/bottom_navigation%20_bar/bottom_navigation_bar_nail.dart';

void main() {
  runApp(const NailApp());
}

class NailApp extends StatelessWidget {
  const NailApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NailApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: BottomNavigationBarNail()
      )
    );
  }
}
