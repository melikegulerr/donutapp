import 'package:flutter/material.dart';
import 'package:project1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const homePage(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    );
  }
}
