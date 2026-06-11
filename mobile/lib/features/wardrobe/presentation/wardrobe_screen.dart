import 'package:flutter/material.dart';
import 'add_item_screen.dart';

class WardrobeScreen extends StatelessWidget {
  const WardrobeScreen({super.key});

  void _navigateToAddItem(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AddItemScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      'Blue Oxford Shirt',
      'Black Jeans',
      'White Sneakers',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wardrobe'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.checkroom),
            title: Text(items[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddItem(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}