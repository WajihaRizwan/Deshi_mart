import 'package:app/order_profile_5.dart';
import 'package:flutter/material.dart';

class MyCart4 extends StatelessWidget {
  const MyCart4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderProfile()),
            );
          },
          child: const Text('Go to Cart'),
        ),
      ),
    );
  }
}

class mycart extends StatefulWidget {
  const mycart({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<mycart> {
  final List<CartItem> _cartItems = [
    CartItem('Bell Pepper Red', '1kg, Price', 'assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png', 4.99, 1),
    CartItem('Egg Chicken Red', '4pcs, Price', 'assets/pngfuel 16.png', 1.99, 1),
    CartItem('Organic Bananas', '12kg, Price', 'assets/banana.png', 3.00, 1),
    CartItem('Ginger', '250gm, Price', 'assets/pngfuel 3 (1).png', 2.99, 1),
  ];

  void _incrementQuantity(int index) {
    setState(() {
      _cartItems[index].quantity++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (_cartItems[index].quantity > 1) {
        _cartItems[index].quantity--;
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  double _calculateTotal() {
    return _cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: ListView.builder(
        itemCount: _cartItems.length,
        itemBuilder: (context, index) {
          return _buildCartItem(context, index);
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CheckoutScreen(total: _calculateTotal())),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            backgroundColor: Colors.green,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Go to Checkout', style: TextStyle(fontSize: 16)),
              Text('\$${_calculateTotal().toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCartItem(BuildContext context, int index) {
    final item = _cartItems[index];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Image.asset(item.imagePath, height: 80, width: 80),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(item.details, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          IconButton(
            onPressed: () => _decrementQuantity(index),
            icon: const Icon(Icons.remove_circle_outline),
          ),
          Text(item.quantity.toString(), style: const TextStyle(fontSize: 18)),
          IconButton(
            onPressed: () => _incrementQuantity(index),
            icon: const Icon(Icons.add_circle_outline),
          ),
          const SizedBox(width: 16),
          Text('\$${(item.price * item.quantity).toStringAsFixed(2)}'),
          IconButton(
            onPressed: () => _removeItem(index),
            icon: const Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String name;
  final String details;
  final String imagePath;
  final double price;
  int quantity;

  CartItem(this.name, this.details, this.imagePath, this.price, this.quantity);
}

class CheckoutScreen extends StatelessWidget {
  final double total;

  const CheckoutScreen({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Amount: \$${total.toStringAsFixed(2)}', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderProfile()),
            );
              },
              child: const Text('Proceed to Payment'),
              
            ),
          ],
        ),
      ),
    );
  }
}
