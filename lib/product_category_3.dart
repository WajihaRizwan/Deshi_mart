import 'package:app/my_cart_4.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProductCategory(),
    );
  }
}

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  _ProductCategoryState createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Store',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCategoryCard(
                    context,
                    'Fresh Fruits & Vegetables',
                    'assets/pngfuel 6.png', // Replace with actual image path
                    FreshFruitsScreen(),
                    Colors.green.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    'Cooking Oil & Ghee',
                    'assets/Group 6835.png', // Replace with actual image path
                    CookingOilScreen(),
                    Colors.orange.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    'Meat & Fish',
                    'assets/pngfuel 9.png', // Replace with actual image path
                    MeatFishScreen(),
                    Colors.red.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    'Bakery & Snacks',
                    'assets/pngfuel 6.png', // Replace with actual image path
                    BakerySnacksScreen(),
                    Colors.purple.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    'Dairy & Eggs',
                    'assets/pngfuel.png', // Replace with actual image path
                    DairyEggsScreen(),
                    Colors.yellow.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    'Beverages',
                    'assets/pngfuel 6 (2).png', // Replace with actual image path
                    BeveragesScreen(),
                    Colors.blue.shade100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 92,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, String categoryName, String imagePath, Widget destinationScreen, Color backgroundColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => mycart(),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 80), // Display the category image
            const SizedBox(height: 10),
            Text(
              categoryName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Separate screens for categories (replace with actual screen content)
class FreshFruitsScreen extends StatelessWidget {
  const FreshFruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fresh Fruits & Vegetables')),
      body: const Center(child: Text('Fresh Fruits & Vegetables')),
    );
  }
}

class CookingOilScreen extends StatelessWidget {
  const CookingOilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cooking Oil & Ghee')),
      body: const Center(child: Text('Cooking Oil & Ghee')),
    );
  }
}

class MeatFishScreen extends StatelessWidget {
  const MeatFishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meat & Fish')),
      body: const Center(child: Text('Meat & Fish')),
    );
  }
}

class BakerySnacksScreen extends StatelessWidget {
  const BakerySnacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bakery & Snacks')),
      body: const Center(child: Text('Bakery & Snacks')),
    );
  }
}

class DairyEggsScreen extends StatelessWidget {
  const DairyEggsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dairy & Eggs')),
      body: const Center(child: Text('Dairy & Eggs')),
    );
  }
}

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beverages')),
      body: const Center(child: Text('Beverages')),
    );
  }
}
