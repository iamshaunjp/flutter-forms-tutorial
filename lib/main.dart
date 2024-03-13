import 'package:flutter/material.dart';
import 'package:flutter_forms_files/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Todo App',
      home: Home(),
    );
  }
}
