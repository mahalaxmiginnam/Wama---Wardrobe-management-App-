import 'package:flutter/material.dart';
import '../features/wardrobe/presentation/wardrobe_screen.dart';

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