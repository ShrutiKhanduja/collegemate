class FoodData {
  final String name;
  final String image;
  final String rating;
  final String price;
  final String description;

  FoodData({
    required this.description,
    required this.rating,
    required this.price,
    required this.name,
    required this.image,
  });
}

List<FoodData> fooddata = [
  FoodData(
      image: 'assets/images/pizza.jpg',
      name: 'Pizza',
      price: '249',
      rating: '3.2',
      description: 'description'),
  FoodData(
      image: 'assets/images/sandwich.jpg',
      name: 'Sandwich',
      price: '119',
      rating: '3.5',
      description: 'description'),
  FoodData(
      image: 'assets/images/fries.jpg',
      name: 'Fries',
      price: '70',
      rating: '5',
      description: 'description'),
  FoodData(
      image: 'assets/images/burger.jpg',
      name: 'Burger',
      price: '129',
      rating: '4.5',
      description: 'description'),
];
