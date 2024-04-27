import 'package:flutter/material.dart';
import 'package:vize_project/screens/Product%20Screens/productScreen1.dart';
import 'package:vize_project/screens/Product%20Screens/productScreen2.dart';
import 'package:vize_project/screens/Product%20Screens/productScreen3.dart';
import 'package:vize_project/screens/Product%20Screens/productScreen4.dart';
import 'package:vize_project/screens/Product%20Screens/productScreen5.dart';
import 'package:vize_project/screens/favourites_screen.dart';
import 'package:vize_project/screens/profile_screen.dart';
import 'package:vize_project/screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lafyuu'),
        backgroundColor: Color(0xFF40BFFF),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Promotion (Super Flash Sale)
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/promotion_background.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Super Flash Sale',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF223263),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '%50 Off',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF223263),
                    ),
                  ),
                ],
              ),
            ),
            // Kategori Listesi
            CategoryList(),
            // Flash Sale
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF223263),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FlashSaleItem(
                          productName: 'Nike Launch React Infinity Run',
                          price: '\$20.99',
                          starCount: 4,
                          imagePath: '../assets/product1_image.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product1Screen(),
                              ),
                            );
                          },
                        ),
                        FlashSaleItem(
                          productName: 'Nike Air Zoom Pegasus 36',
                          price: '\$15.49',
                          starCount: 5,
                          imagePath: '../assets/product2_image.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product2Screen(),
                              ),
                            );
                          },
                        ),
                        FlashSaleItem(
                          productName: 'Nike Air Max 270 React',
                          price: '\$30.00',
                          starCount: 3,
                          imagePath: '../assets/product3_image.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product3Screen(),
                              ),
                            );
                          },
                        ),
                        FlashSaleItem(
                          productName: 'Nike Air Max 270 CO',
                          price: '\$25.99',
                          starCount: 4,
                          imagePath: '../assets/product4_image.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product4Screen(),
                              ),
                            );
                          },
                        ),
                        FlashSaleItem(
                          productName: 'Nike Air Max Plus Utility',
                          price: '\$18.75',
                          starCount: 5,
                          imagePath: '../assets/product5_image.png',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product5Screen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Tavsiye Edilen Ürünler
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Recommended Products',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF223263),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ProductItem(
                              productName: 'Puma Mens Sueda Classic',
                              price: '\$49.99',
                              starCount: 4,
                              imagePath: '../assets/product6_image.jpeg',
                            ),
                            SizedBox(height: 20),
                            ProductItem(
                              productName: 'Under Armour Flow FUTR X 2',
                              price: '\$39.99',
                              starCount: 5,
                              imagePath: '../assets/product6_image.jpg',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            ProductItem(
                              productName: 'Adidas Stan Smith',
                              price: '\$59.99',
                              starCount: 3,
                              imagePath: '../assets/product7_image.png',
                            ),
                            SizedBox(height: 20),
                            ProductItem(
                              productName: 'Sharks Home Authentic Jersey',
                              price: '\$29.99',
                              starCount: 4,
                              imagePath: '../assets/product8_image.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            ProductItem(
                              productName: 'White Jordan Air 1 Mid',
                              price: '\$69.99',
                              starCount: 5,
                              imagePath: '../assets/product9_image.jpg',
                            ),
                            SizedBox(height: 20),
                            ProductItem(
                              productName: 'Jordan Academy',
                              price: '\$19.99',
                              starCount: 3,
                              imagePath: '../assets/product0_image.jpg',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}

// Kategori Listesi Widget'ı
class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF9098B1)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF223263),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem(categoryName: 'Shoes'),
                CategoryItem(categoryName: 'Shirts'),
                CategoryItem(categoryName: 'Shorts'),
                CategoryItem(categoryName: 'Hats'),
                CategoryItem(categoryName: 'Socks'),
                CategoryItem(categoryName: 'Hats'),
                CategoryItem(categoryName: 'SweatShirts'),
                CategoryItem(categoryName: 'Training and Gym'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Kategori Öğesi Widget'ı
class CategoryItem extends StatelessWidget {
  final String categoryName;

  const CategoryItem({
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Color(0xFF40BFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          categoryName,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF223263),
          ),
        ),
      ),
    );
  }
}

// Flash Sale Ürün Öğesi Widget'ı
class FlashSaleItem extends StatelessWidget {
  final String productName;
  final String price;
  final int starCount;
  final VoidCallback onTap;
  final String imagePath;

  const FlashSaleItem({
    required this.productName,
    required this.price,
    required this.starCount,
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10),
            Text(
              productName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF223263),
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  index < starCount ? Icons.star : Icons.star_border,
                  color: Color(0xFF40BFFF),
                  size: 20,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF40BFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tavsiye Edilen Ürün Öğesi Widget'ı
class ProductItem extends StatelessWidget {
  final String productName;
  final String price;
  final int starCount;
  final String imagePath;

  const ProductItem({
    required this.productName,
    required this.price,
    required this.starCount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF9098B1)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          Text(
            productName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF223263),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < starCount ? Icons.star : Icons.star_border,
                color: Color(0xFF40BFFF),
                size: 20,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF40BFFF),
            ),
          ),
        ],
      ),
    );
  }
}

// Footer Widget'ı
class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _selectedIndex = 0;

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  if (index == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavouritesScreen(),
      ),
    );
  } else if (index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchScreen(), 
      ),
    );
  }else if (index == 3) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfileScreen(), 
      ),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white, 
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFF40BFFF),
      unselectedItemColor: Color(0xFF9098B1), 
      onTap: _onItemTapped,
    );
  }
}

