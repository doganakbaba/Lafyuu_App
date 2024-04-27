import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Color(0xFF40BFFF), 
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), 
        child: Column(
          children: [
            SizedBox(height: 20), 
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Color(0xFFEBF0FF)), 
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Product...',
                  border: InputBorder.none, 
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF40BFFF), 
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), 
            // Ürün Sıraları
            ProductRow(
              productName: 'Nike Launch React Infinity Run', 
              imageURL: '../assets/product1_image.png', 
            ),
            ProductRow(
              productName: 'Nike Air Zoom Pegasus 36', 
              imageURL: '../assets/product2_image.png', 
            ),
            ProductRow(
              productName: 'Nike Air Max 270 React', 
              imageURL: '../assets/product3_image.png', 
            ),
          ],
        ),
      ),
    );
  }
}

class ProductRow extends StatelessWidget {
  final String productName;
  final String imageURL;

  const ProductRow({
    required this.productName,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0xFFEBF0FF)), 
      ),
      child: Row(
        children: [
          // Ürün Fotoğrafı
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageURL), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20), // Fotoğraftan sonra boşluk ekledim
          // Ürün Adı
          Text(
            productName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF223263), 
            ),
          ),
        ],
      ),
    );
  }
}
