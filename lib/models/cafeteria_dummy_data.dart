class CafeData {
  final String name;
  final String? address;
  final String image;
  final String rating;
  final String timing;
  final String distance;

  CafeData({
    this.address,
    required this.rating,
    required this.timing,
    required this.distance,
    required this.name,
    required this.image,
  });
}

List<CafeData> cafeData = [
  CafeData(
      name: 'Gramercy Tavern',
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
      distance: '7 km',
      rating: '3.5',
      timing: 'opens * closed 17: 00 Thu',
      address: 'This is the address line'),
  CafeData(
    name: 'Le Bernardin',
    image:
        'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
    distance: '3 km',
    rating: '4.4',
    timing: '10:30 am to 7:30pm',
    address: 'This is the address line',
  ),
  CafeData(
    name: 'Blue Hill',
    image:
        'https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no',
    distance: '4 km',
    rating: '2.6',
    timing: '11:30 am to 9:30pm',
    address: 'This is the address line',
  )
];
