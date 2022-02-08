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
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
      name: 'Pizza',
      price: '249',
      rating: '3',
      description: 'description'),
  FoodData(
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
      name: 'Burger',
      price: '129',
      rating: '4',
      description: 'description'),
  FoodData(
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
      name: 'Sandwich',
      price: '119',
      rating: '3',
      description: 'description'),
  FoodData(
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
      name: 'Fries',
      price: '70',
      rating: '3',
      description: 'description'),
];
