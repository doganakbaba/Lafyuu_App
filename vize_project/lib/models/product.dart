class Product {
  final String name;
  final String imageUrl;
  final double price;
  late final bool isFavorite;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false, // Favori durumu varsayılan olarak false
  });
}
