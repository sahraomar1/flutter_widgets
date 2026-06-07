import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Demo',
      debugShowCheckedModeBanner: false,
      home: const SimpleCardScreen(),
    );
  }
}

class SimpleCardScreen extends StatelessWidget {
  const SimpleCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget Demo'),
      ),
      body: const Center(
        child: MyProductCard(),
      ),
    );
  }
}

class MyProductCard extends StatelessWidget {
  const MyProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 340,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            color: Colors.blue[100],
            child: const Icon(Icons.headphones, size: 90, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          const Text(
            'Wireless Headphones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            '\$79.99',
            style: TextStyle(fontSize: 18, color: Colors.green),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // This shows a message when you tap "Add to Cart"
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Added to Cart!'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}