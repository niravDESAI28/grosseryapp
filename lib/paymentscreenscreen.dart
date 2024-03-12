import 'package:flutter/material.dart';

void main() {
  runApp(PaymentMethodScreen());
}

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Method Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentMethodPage(),
    );
  }
}
    
class PaymentMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Payment Method'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          PaymentMethodCard(
            icon: Icons.credit_card,
            title: 'Credit Card',
            onTap: () {
              // Handle credit card selection
            },
          ),
          PaymentMethodCard(
            icon: Icons.payment,
            title: 'PayPal',
            onTap: () {
              // Handle PayPal selection
            },
          ),
          // Add more PaymentMethodCard widgets for other payment methods
        ],
      ),
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const PaymentMethodCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 36.0,
              ),
              SizedBox(width: 16.0),
              Text(
                title,
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
