import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Profile Section
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/profile.png'), // Use user's image
            ),
            title: Text('Wajiha Lakhany'),
            subtitle: Text('wajihalakhany@gmail.com'),
            trailing: Icon(Icons.edit),
            onTap: () {
              // Navigate to Edit Profile screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          Divider(),

          // Orders
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Orders'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          // My Details
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Details'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          // Delivery Address
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Delivery Address'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          // Payment Methods
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment Methods'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          // Promo Code
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Promo Code'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          // Notifications
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),

          // Help
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),

          // About
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),
          
          // Logout Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle Logout
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AccountScreen()),
                );
              },
              child: Text('Log Out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ),
        ],
      ),
      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4, // Set the default selected index for 'Account'
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        onTap: (index) {
          // Handle bottom navigation
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
          } else if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
          } else if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
          } else if (index == 3) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
          } else if (index == 4) {
            // Already on Account Screen
          }
        },
      ),
    );
  }
}
