import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItem foodItem;
  const FavoriteItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          Image.network(
            foodItem.imgUrl,
            height: 70,
            width: 70,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w400),
                ),
                Text(
                  '\$${foodItem.price}',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrange),
                ),
              ],
            ),
          ),
          const Icon(Icons.favorite)
        ],
      ),
    );
  }
}
