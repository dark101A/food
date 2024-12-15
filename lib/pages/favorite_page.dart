import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';
import 'package:test1/widgets/favorite_item.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<FoodItem> favaritefood = [];

  @override
  void initState() {
    super.initState();
    updateFavoriteList();
  }

  void updateFavoriteList() {
    log("function update called");
    setState(() {
      favaritefood =
          food.where((foodItem) => foodItem.isFavorite == true).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (favaritefood.isEmpty) {
      return Column(
        children: [
          Center(
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/4208/4208408.png',
              fit: BoxFit.contain,
            ),
          ),
          const Text(
            'No Favarite ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          )
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: favaritefood.length,
        itemBuilder: (context, index) => FavoriteItem(
          foodItem: favaritefood[index],
          voidCallback: updateFavoriteList,
        ),
      ),
    );
  }
}
