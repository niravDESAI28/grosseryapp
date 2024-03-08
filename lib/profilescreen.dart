import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ShoppingProfilePage(),
  ));
}


class ShoppingProfilePage extends StatefulWidget {
  @override
  _ShoppingProfilePageState createState() => _ShoppingProfilePageState();
}

class _ShoppingProfilePageState extends State<ShoppingProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Name: John Doe'),
            Text('Email: john.doe@example.com'),
            Text('Address: 123 Main Street'),
            SizedBox(height: 20),
            Text(
              'My Addresses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Assuming there are 5 orders
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Home${index + 1}'),
                    subtitle: Text('Date: 2024-03-08'),
                    trailing: Text('\$50.00'),
                    onTap: () 
                    {
                      // Handle order tap
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

