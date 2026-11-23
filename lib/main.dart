import 'package:flutter/material.dart';
import 'screens/menu.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyPortfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF4A7BC),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    ),
  );
}