
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  PaymentScreenState createState() => PaymentScreenState();
}

class PaymentScreenState extends State<PaymentScreen> {
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _expiryController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _cardNumberController,
              decoration: InputDecoration(labelText: 'Card Number'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _expiryController,
              decoration: InputDecoration(labelText: 'Expiry Date'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _cvvController,
              decoration: InputDecoration(labelText: 'CVV'),
            ),
            SizedBox(height: 20.0),
            // RaisedButton
            // (
            //   onPressed: () {
            //     // Handle payment logic here
            //     _processPayment();
            //   },
            //   child: Text('Pay Now'),
            // ),
          ],
        ),
      ),
    );
  }

  void _processPayment() {
    // Implement payment processing logic here
    // For example, you can validate inputs and call payment gateway APIs
    // Once payment is successful, navigate to a success screen
    // If payment fails, show an error message to the user
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryController.dispose();
    _cvvController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentScreen(),
  ));
}
