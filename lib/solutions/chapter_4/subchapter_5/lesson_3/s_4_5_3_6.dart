import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (Product p in products)
          ListTile(
            leading: Icon(
              Icons.shopping_cart
            ),
            title: Text(p.name),
            subtitle: Text('\$${p.price.toStringAsFixed(2)}'),
          ),
      ],
    );
  }
}

class Product {
  final String name;
  final double price;
  Product(this.name, this.price);
}

List<Product> products = [
  Product('Apple', 1.0),
  Product('Banana', 0.5),
  Product('Orange', 0.8),
  Product('Peach', 3.2),
  Product('Strawberry', 6.2),
];

