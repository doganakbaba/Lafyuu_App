import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
        backgroundColor: Color(0xFF40BFFF),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildFavouriteItem(context, 'Nike Air Max 270', '\$129.99', 'product1_image.png'),
          _buildFavouriteItem(context, 'Adidas UltraBoost 21', '\$159.99', 'product2_image.png'),
          _buildFavouriteItem(context, 'New Balance Fresh Foam X', '\$119.99', 'product3_image.png'),
        ],
      ),
    );
  }

  Widget _buildFavouriteItem(BuildContext context, String name, String price, String imagePath) {
    return ListTile(
      leading: Image.asset(
        'assets/$imagePath',
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(name),
      subtitle: Text(price),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline),
        onPressed: () {
          // Favorilerden kaldırma işlemi
        },
      ),
      onTap: () {
        // Ürün detayına gitme işlemi
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailScreen()),
        );
      },
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        backgroundColor: Color(0xFF40BFFF),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Product Detail Page'),
      ),
    );
  }
}
