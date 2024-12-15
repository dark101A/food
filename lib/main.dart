import 'package:flutter/material.dart';
import 'package:test1/pages/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          iconTheme: const IconThemeData(color: Colors.deepOrange),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.deepOrange,
          )),
      home: const BottomNav(),
    );
  }
}
