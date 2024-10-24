import 'package:app/signup.dart';
import 'package:flutter/material.dart';

class DeshiMartApp extends StatelessWidget {
  const DeshiMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcomescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top part
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo and title
                const Row(
                  children: [
                    // Logo
                    Icon(
                      Icons.restaurant_menu,
                      color: Colors.orange,
                      size: 50,
                    ),
                    SizedBox(width: 10),
                    // Title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DESHI MART',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          'Desh ka market',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Features
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen(title: 'Organic Groceries')),
                    );
                  },
                  child: _buildFeatureRow(Icons.eco, 'Organic Groceries'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen(title: 'Whole foods and vegetable')),
                    );
                  },
                  child: _buildFeatureRow(Icons.local_grocery_store, 'Whole foods and vegetable'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen(title: 'Fast Delivery')),
                    );
                  },
                  child: _buildFeatureRow(Icons.delivery_dining, 'Fast Delivery'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen(title: 'Easy Refund and return')),
                    );
                  },
                  child: _buildFeatureRow(Icons.refresh, 'Easy Refund and return'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen(title: 'Secure and safe')),
                    );
                  },
                  child: _buildFeatureRow(Icons.security, 'Secure and safe'),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Bottom part
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to our Store',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Get your grocery in as fast as one hours',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Search bar or input field
                GestureDetector(
        onTap: ( ) {
          // signup screen add kren
           Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
        },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // child: TextField(
                    //   decoration: InputDecoration(
                    //     hintText: 'Search for products...',
                    //     border: InputBorder.none,
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// New screen to navigate to
class SignInScreen extends StatelessWidget {
  final String title;

  const SignInScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Details about $title',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
