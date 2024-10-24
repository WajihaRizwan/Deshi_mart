import 'package:app/order_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: OrderProfile(),
    );
  }
}

class OrderProfile extends StatelessWidget {
  const OrderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade300, // Placeholder for user image
              ),
              const SizedBox(height: 20),
              const Text(
                'Wajiha Lakhany',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'wajihalakhany@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildProfileButton(context, 'Orders', Icons.shopping_bag, OrdersPage()),
                  _buildProfileButton(context, 'Payments', Icons.payment, PaymentsPage()),
                  _buildProfileButton(context, 'Address', Icons.location_on, AddressPage()),
                ],
              ),
              const SizedBox(height: 30),
              _buildProfileOption(context, 'User Details', Icons.person, UserDetailsPage()),
              _buildProfileOption(context, 'Settings', Icons.settings, SettingsPage()),
              _buildProfileOption(context, 'Help & Supports', Icons.help, HelpPage()),
              _buildProfileOption(context, 'Change Language', Icons.language, ChangeLanguagePage()),
              _buildProfileOption(context, 'Logout', Icons.logout, LogoutPage()),
            ],
          ),
        ),
      ),
    );
  }

  // Profile Option Builder
  Widget _buildProfileOption(BuildContext context, String title, IconData icon, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.green),
            const SizedBox(width: 20),
            Text(title, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }

  // Profile button for Orders, Payments, Address
  Widget _buildProfileButton(BuildContext context, String title, IconData icon, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
     MaterialPageRoute(builder: (context) => OrderDetail()),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green.shade100,
            child: Icon(icon, color: Colors.green, size: 30),
          ),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

// Dummy pages for navigation
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: const Center(child: Text('Orders Page')),
    );
  }
}

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payments')),
      body: const Center(child: Text('Payments Page')),
    );
  }
}

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Address')),
      body: const Center(child: Text('Address Page')),
    );
  }
}

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: const Center(child: Text('User Details Page')),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Page')),
    );
  }
}

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help & Supports')),
      body: const Center(child: Text('Help & Supports Page')),
    );
  }
}

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Language')),
      body: const Center(child: Text('Change Language Page')),
    );
  }
}

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logout')),
      body: const Center(child: Text('Logout Page')),
    );
  }
}
