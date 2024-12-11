class FoodItem {
  final String name;
  final String imgUrl;
  final double price;

  FoodItem({required this.name, required this.imgUrl, required this.price});
}

List<FoodItem> food = [
  FoodItem(
      name: 'Beef Burger',
      imgUrl:
          'https://t4.ftcdn.net/jpg/09/88/67/35/360_F_988673577_IqsqmCDffOHPCw39TBD888DCtK3Kpdq0.jpg',
      price: 50),
  FoodItem(
      name: 'Chicken Burger',
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/046/955/491/non_2x/grilled-cheeseburger-meal-icon-isolated-vector.jpg',
      price: 70),
  FoodItem(
      name: 'cheese Burger',
      imgUrl:
          'https://img.freepik.com/premium-vector/cheese-burger-vector-illustration-fast-food-icon-sign-symbol_752732-84.jpg',
      price: 80),
  FoodItem(
      name: 'chicken pizza',
      imgUrl:
          'https://img.freepik.com/premium-vector/realistic-pizza-vector-illustration-concept_1253202-57553.jpg?semt=ais_hybrid',
      price: 90),
  FoodItem(
      name: 'cheese pizza',
      imgUrl:
          'https://st2.depositphotos.com/3687485/9049/v/450/depositphotos_90493358-stock-illustration-pizza-flat-icon-isolated-on.jpg',
      price: 100),
  FoodItem(
      name: 'meat pizza',
      imgUrl:
          'https://img.freepik.com/premium-vector/salami-meat-pizza-icon-flat-illustration-salami-meat-pizza-vector-icon-web-design_98396-15541.jpg',
      price: 60),
  FoodItem(
      name: 'pasta',
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/024/247/515/non_2x/pasta-icon-in-illustration-vector.jpg',
      price: 150),
];
