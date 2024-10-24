import 'package:app/order_done.dart';
import 'package:flutter/material.dart';


class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOut'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                CartItem(
                  name: 'Bell Pepper Red',
                  price: 4.99,
                  quantity: 1,
                 imageUrl: 'assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',// Replace with your image URL
                ),
                CartItem(
                  name: 'Egg Chicken Red',
                  price: 1.99,
                  quantity: 4,
                  imageUrl: 'assets/pngfuel 16.png', // Replace with your image URL
                ),
              ],
            ),
          ),
          CheckoutSection(totalCost: 13.97), // Total Cost
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final double price;
  final int quantity;
  final String imageUrl;

  CartItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            imageUrl,
            width: 50,
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('$quantity kg, Price'),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {},
              ),
              Text('$quantity'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            '\$${price.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CheckoutSection extends StatelessWidget {
  final double totalCost;

  CheckoutSection({required this.totalCost});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Delivery'),
            trailing: Text('Select Method'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryScreen(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Payment'),
            trailing: Icon(Icons.payment),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Promo Code'),
            trailing: Text('Pick discount'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PromoCodeScreen(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Total Cost'),
            trailing: Text(
              '\$${totalCost.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderAcceptedScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              backgroundColor: Colors.green,
            ),
            child: Text(
              'Place Order',
              style: TextStyle(fontSize: 18),
            ),
            
          ),
          
          SizedBox(height: 16),
          
          Text(
            'By placing an order you agree to our Terms And Conditions',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// Placeholder screen for Delivery
class DeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Delivery Method'),
      ),
      body: Center(
        child: Text('Delivery Method Options'),
      ),
    );
  }
}

// Placeholder screen for Payment
class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Payment Method'),
      ),
      body: Center(
        child: Text('Payment Method Options'),
      ),
    );
  }
}

// Placeholder screen for Promo Code
class PromoCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Promo Code'),
      ),
      body: Center(
        child: Text('Available Promo Codes'),
      ),
    );
  }
}

// Placeholder screen for Order Confirmation
class OrderConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Center(
        child: Text('Your order has been placed!'),
      ),
    );
  }
}
