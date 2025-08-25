import 'package:flutter/material.dart';
import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mbonda Stream',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF1DB954),
      ),
      home: const HomePage(),
    );
  }
}