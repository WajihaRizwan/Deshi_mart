import 'package:app/order_history.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Please check your order status to get the item delivered to your home',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5,  // Number of orders in the list
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to a new screen on tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderHistory(),
                        ),
                      );
                    },
                    child: OrderStatusTile(orderNumber: index + 1),
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

class OrderStatusTile extends StatelessWidget {
  final int orderNumber;

  const OrderStatusTile({super.key, required this.orderNumber});

  @override
  
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Order Confirmed',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Feb 22, 2024',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}

class OrderDetailScreen extends StatelessWidget {
  final int orderNumber;

  const OrderDetailScreen({super.key, required this.orderNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #$orderNumber Details'),
      ),
      body: Center(
        child: Text(
          'Details for Order #$orderNumber',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
