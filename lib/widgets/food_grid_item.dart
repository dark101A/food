import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';

class FoodGridItem extends StatelessWidget {
  final FoodItem foodItem;
  const FoodGridItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.network(
            foodItem.imgUrl,
            height: 100,
          ),
          Text(
            foodItem.name,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Text(
            '\$ ${foodItem.price}',
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.deepOrange),
          )
        ],
      ),
    );
  }
}
