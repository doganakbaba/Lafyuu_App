import 'package:flutter/material.dart';

class Product3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nike Air Zoom Pegasus 36'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Ürün Fotoğrafı
            Image.asset(
              '../assets/product3_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Ürün Adı ve Favori İkonu
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nike Air Zoom Pegasus 36',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () {
                      // Favorilere ekleme işlemi
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Ürün Fiyatı
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '\$49.99',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF40BFFF),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Beden Seçimi
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Select Size',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF223263),
                ),
              ),
            ),
            SizedBox(height: 5),
            // Beden Seçenekleri
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSizeOption('6'),
                  _buildSizeOption('6.5'),
                  _buildSizeOption('7'),
                  _buildSizeOption('7.5'),
                  _buildSizeOption('8'),
                  _buildSizeOption('8.5'),
                  _buildSizeOption('9'),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Select Color
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Select Color',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF223263),
                ),
              ),
            ),
            SizedBox(height: 5),
            // Renk Seçenekleri
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildColorOption(Colors.red),
                  _buildColorOption(Colors.blue),
                  _buildColorOption(Colors.green),
                  _buildColorOption(Colors.yellow),
                  _buildColorOption(Colors.orange),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Yorumlar Başlığı
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Comments',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Kullanıcı Yorumu
            _buildComment(
              '../assets/user_avatar1.png',
              'John Doe',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
            
          ],
        ),
      ),
      persistentFooterButtons: [
        Container(
          width: double.infinity,
          color: Color(0xFF59C6FF),
          child: TextButton(
            onPressed: () {
              // Add to cart işlemi
            },
            child: Text(
              'Add To Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSizeOption(String size) {
    return InkWell(
      onTap: () {
        // Seçilen beden işlemleri
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEBF0FF)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return InkWell(
      onTap: () {
        // Seçilen renk işlemleri
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildComment(String avatarUrl, String username, String comment) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Kullanıcı Fotoğrafı ve Kullanıcı Adı
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(avatarUrl),
              ),
              SizedBox(width: 10),
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Yorum Metni
          Text(comment),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
