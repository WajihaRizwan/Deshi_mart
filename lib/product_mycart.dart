import 'package:app/order_profile_5.dart';
import 'package:flutter/material.dart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      home: ProductMycart(),
    );
  }

class ProductMycart extends StatelessWidget {
  const ProductMycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: Column(
        children: [
          // Cart items here
          CartItem(
            itemName: 'Bell Pepper Red',
            itemPrice: 4.99,
          ),
          CartItem(
            itemName: 'Egg Chicken Red',
            itemPrice: 1.99,
          ),
          CartItem(
            itemName: 'Organic Bananas',
            itemPrice: 3.00,
          ),
          CartItem(
            itemName: 'Ginger',
            itemPrice: 2.99,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // Navigate to the checkout screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderProfile()),
              );
            },
            child: const Text("Go to Checkout"),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String itemName;
  final double itemPrice;

  const CartItem({super.key, required this.itemName, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemName),
      trailing: Text('\$$itemPrice'),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: const Center(
        child: Text("This is the Checkout Screen"),
      ),
    );
  }
}
