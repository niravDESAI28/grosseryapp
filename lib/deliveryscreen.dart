import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DeliveryScreen(),
  ));
}


class DeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Delivery in 10 Minutes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Delivery Address'),
              subtitle: Text('123 Main Street, City, Country'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Delivery Time'),
              subtitle: Text('Estimated Delivery Time: 30 minutes'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment Method'),
              subtitle: Text('Credit Card'),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              trailing: Text('\$10'),
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Text('\$15'),
            ),
            ListTile(
              title: Text('Item 3'),
              trailing: Text('\$20'),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Total',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '\$45',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle the button press, e.g., navigate to a confirmation screen
                },
                child: Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: DeliveryScreen(),
//   ));
// }
