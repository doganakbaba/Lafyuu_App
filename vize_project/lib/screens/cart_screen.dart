import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        backgroundColor: Color(0xFF40BFFF),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CartItem(
              productName: 'Nike Launch React Infinity Run',
              price: '\$20.99',
              quantity: 1,
              imageUrl: './assets/product1_image.png', 
            ),
            SizedBox(height: 20),
            CartItem(
              productName: 'Nike Air Max Plus Utility',
              price: '\$15.49',
              quantity: 2,
              imageUrl: './assets/product2_image.png', 
            ),
            SizedBox(height: 20),
            CartItem(
              productName: 'Nike Air Max 270 CO',
              price: '\$30.00',
              quantity: 1,
              imageUrl: './assets/product3_image.png', 
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Proceed to Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final String imageUrl;

  const CartItem({
    required this.productName,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Price: $price',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Quantity: $quantity',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
