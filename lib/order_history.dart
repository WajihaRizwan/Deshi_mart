import 'package:app/checkout_screen.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderHistoryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OrderHistoryScreen extends StatelessWidget {
  final List<Order> orders = [
    Order(status: 'Confirmed', orderId: '235454645', items: 7, icon: Icons.check_circle, color: Colors.green),
    Order(status: 'Delivered', orderId: '235454645', items: 7, icon: Icons.local_shipping, color: Colors.green),
    Order(status: 'Canceled', orderId: '235454645', items: 7, icon: Icons.cancel, color: Colors.red),
    Order(status: 'Confirmed', orderId: '235454645', items: 7, icon: Icons.check_circle, color: Colors.green),
    Order(status: 'Delivered', orderId: '235454645', items: 7, icon: Icons.local_shipping, color: Colors.green),
    Order(status: 'Canceled', orderId: '235454645', items: 7, icon: Icons.cancel, color: Colors.red),
  ];

   OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order History',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  final order = orders[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutScreen(),
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: order.color.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                order.icon,
                                color: order.color,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  order.status,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text('Order id : ${order.orderId}'),
                                Text('Items (${order.items})'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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

class Order {
  final String status;
  final String orderId;
  final int items;
  final IconData icon;
  final Color color;

  Order({
    required this.status,
    required this.orderId,
    required this.items,
    required this.icon,
    required this.color,
  });
}

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  const OrderDetailsScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Status: ${order.status}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Order ID: ${order.orderId}'),
            Text('Items: ${order.items}'),
            // Add more order details as needed
          ],
        ),
      ),
    );
  }
}
