
import 'package:flutter/material.dart';
import 'screen_one.dart';
import 'screen_two.dart';

void main() {
  runApp(const NikeStoreApp());
}

class NikeStoreApp extends StatelessWidget {
  const NikeStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Store',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE41491),
          surface: Colors.white,
        ),
        fontFamily: 'Arial',
      ),
      home: const HomeScreen(),
    );
  }
}
