import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingPage(),
    );
  }
}

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Online Shop'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          ProductItem(
            name: 'Product 1',
            description: 'Description of Product 1',
            price: '\$10.00',
            imageUrl: 'product1.jpg',
          ),
          ProductItem(
            name: 'Product 2',
            description: 'Description of Product 2',
            price: '\$15.00',
            imageUrl: 'product2.jpg',
          ),
          // Add more ProductItems as needed
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String imageUrl;

  const ProductItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(description),
                SizedBox(height: 5.0),
                Text('Price: $price'),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
