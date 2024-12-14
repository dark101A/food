import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';
import 'package:test1/widgets/favorite_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            if (!food[index].isFivorate) return const SizedBox.shrink();
            return FavoriteItem(foodItem: food[index]);
          },
        ));
  }
}
