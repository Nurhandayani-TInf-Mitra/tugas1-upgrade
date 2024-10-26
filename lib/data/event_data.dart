class Event {
  final String title;
  final String date;
  final String location;
  final String imageUrl;
  final String description;
  final String price;

  Event({
    required this.title,
    required this.date,
    required this.location,
    required this.imageUrl,
    required this.description,
    required this.price,
  });
}

final List<Event> events = [
  Event(
    title: 'BTS Concert',
    date: '15 Oct',
    location: 'Seoul',
    imageUrl: 'image/bts.jpeg',
    description: 'Konser spektakuler dari BTS di Seoul!',
    price: 'Rp. 2.000.000,00',
  ),
  Event(
      title: 'Taylor Swift Concert',
      date: '10 Nov',
      location: 'Los Angeles',
      imageUrl: 'image/taylorswift.jpg',
      description: 'Konser eksklusif dari Taylor Swift di Los Angeles!',
      price: 'Rp. 1.500.000,00'),
];
