import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';
import 'package:test1/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset('assets/images/baner.jpg',
                height: 200, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Expanded(
          child: GridView.builder(
              itemCount: food.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (context, index) =>
                  FoodGridItem(foodItem: food[index])),
        )
      ],
    ));
  }
}
