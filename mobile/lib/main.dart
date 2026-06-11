import 'package:flutter/material.dart';

void main() {
  runApp(const WamaApp());
}

class WamaApp extends StatelessWidget {
  const WamaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WardrobeScreen(),
    );
  }
}

class WardrobeScreen extends StatelessWidget {
  const WardrobeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Blue Oxford Shirt',
      'Black Jeans',
      'White Sneakers',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wama'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) => ListTile(
          leading: const Icon(Icons.checkroom),
          title: Text(items[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}