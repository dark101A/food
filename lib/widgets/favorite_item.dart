import 'package:flutter/material.dart';
import 'package:test1/models/food_item.dart';

class FavoriteItem extends StatefulWidget {
  final FoodItem foodItem;
  final Function voidCallback;
  const FavoriteItem(
      {super.key, required this.foodItem, required this.voidCallback});

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  late bool isFav;

  @override
  void initState() {
    super.initState();
    isFav = widget.foodItem.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          Image.network(
            widget.foodItem.imgUrl,
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
                  widget.foodItem.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w400),
                ),
                Text(
                  '\$${widget.foodItem.price}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                food.firstWhere((f) => f.id == widget.foodItem.id).isFavorite =
                    !isFav;

                isFav = !isFav;
                widget.voidCallback();
              });
            },
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
