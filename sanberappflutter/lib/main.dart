import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas10/HomeScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas10/LoginScreen.dart';
import 'Tugas/Tugas9/Telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

