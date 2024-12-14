import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';
import 'package:test1/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset('assets/images/baner.jpg',
                  height: MediaQuery.of(context).size.height * 0.20,
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: size.height * 0.001,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: food.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (context, index) => FoodGridItem(foodIndex: index))
        ],
      ),
    ));
  }
}
