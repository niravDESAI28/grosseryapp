import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OrderProfileScreen(),
  ));
}


class OrderProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildOrderDetails(),
            SizedBox(height: 20),
            _buildOrderItemsList(),
            SizedBox(height: 20),
            _buildOrderActions(),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderDetails() {
    // You can replace the placeholders with actual data
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Orders',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Date: January 1, 2024'),
          SizedBox(height: 8),
          Text('Total Amount: \$100.00'),
          SizedBox(height: 8),
          Text('Status: Delivered'),
        ],
      ),
    );
  }

  Widget _buildOrderItemsList() {
    // You can replace this with a ListView.builder if you have a dynamic list of items
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ordered Items:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined ),
            title: Text('0RD0432547891'),
            subtitle: Text(''),
            trailing: Text('\930.00'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text('0RD0432525486'),
            subtitle: Text(''),
            trailing: Text('\$580.00'),
          ),
                    ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text('0RD0432556247'),
            subtitle: Text(''),
            trailing: Text('\$1080.00'),
          ),
          // Add more ListTiles for additional items
        ],
      ),
    );
  }
  
 Widget _buildOrderActions() {
    return Container(
      padding: EdgeInsets.all(150),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          // Implement action button functionality
        },
        child: Text('HOME'),
      ),
    );
  }
}

