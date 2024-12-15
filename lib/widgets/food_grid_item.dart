import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;
  const FoodGridItem({super.key, required this.foodIndex});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                food[widget.foodIndex].imgUrl,
                height: 100,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () => setState(() {
                        food[widget.foodIndex] = food[widget.foodIndex]
                            .copyWith(
                                isFivorate: !food[widget.foodIndex].isFavorite);
                      }),
                      child: Icon(
                        food[widget.foodIndex].isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                    ),
                  ))
            ],
          ),
          Text(
            food[widget.foodIndex].name,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Text(
            '\$ ${food[widget.foodIndex].price}',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
