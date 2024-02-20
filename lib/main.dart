import 'package:animated_tasks/screen1.dart';
import 'package:animated_tasks/screen2.dart';
import 'package:flutter/material.dart';
import 'Screen3.dart';
import 'another_way_screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen3(),
    );
  }
}