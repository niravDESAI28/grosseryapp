import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add to Cart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AddToCartScreen(),
    );
  }
}

class AddToCartScreen extends StatefulWidget {
  @override
  AddToCartScreenState createState() => AddToCartScreenState();
}

class AddToCartScreenState extends State<AddToCartScreen> {
  int _itemCount = 1; // Initial item count

  void _incrementItemCount() {
    setState(() {
      _itemCount++;
    });
  }

  void _decrementItemCount() {
    setState(() {
      if (_itemCount > 1) {
        _itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Product Name',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Product Description',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decrementItemCount,
                ),
                Text(
                  '$_itemCount', // Display the item count
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementItemCount,
                ),
              ],
            ),
            // SizedBox(height: 20.0),
            // RaisedButton(
            //   onPressed: () {
            //     // Implement add to cart functionality
            //     // Here you can add the item to the cart
            //     // You can use _itemCount to determine how many items to add
            //   },
            //   child: Text('Add to Cart'),
            // ),
          ],
        ),
      ),
    );
  }
}
