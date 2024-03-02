import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingHomePage(),
    );
  }
}

class ShoppingHomePage extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Electronics', icon: Icons.phone_android),
    Category(name: 'Clothing', icon: Icons.shopping_bag),
    Category(name: 'Books', icon: Icons.book),
    Category(name: 'Beauty', icon: Icons.face),
    Category(name: 'Sports', icon: Icons.sports_soccer),
    Category(name: 'Home', icon: Icons.home),
    Category(name: 'Toys', icon: Icons.toys),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Home'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          // Handle category selection
          print('Selected category: ${category.name}');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(category.icon, size: 50),
            SizedBox(height: 10),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}
