import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';

class TopBanner extends StatelessWidget {
  final FoodItem foodItem;

  const TopBanner({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DecoratedBox(
      decoration: const BoxDecoration(color: Color.fromARGB(39, 158, 158, 158)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
          ),
          Image.network(
            foodItem.imgUrl,
            fit: BoxFit.contain,
            height: size.height * 0.4,
          ),
        ],
      ),
    );
  }
}
