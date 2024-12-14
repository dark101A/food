import 'package:flutter/material.dart';
import 'package:test1/pages/favorite_page.dart';
import 'package:test1/pages/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  void onItemTapped(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  List<Widget> bodyOptions = [
    const HomePage(),
    const FavoritePage(),
    const Center(
      child: Text('Account page'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text('Food')),
        backgroundColor: Colors.white,
      ),
      body: bodyOptions[selectedIndex],
      drawer: const Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: selectedIndex,
        onTap: (index) => onItemTapped(index),
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
