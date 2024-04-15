import 'package:flutter/material.dart';
import 'package:ismproduksi/screens/splash.dart';
//import 'package:ismproduksi/screens/homepage.dart';
import 'package:ismproduksi/widgets/form_ism.dart';
//import 'package:ismproduksi/screens/splash.dart';
//import 'package:ismproduksi/widgets/bottomnavigasi.dart';
import 'package:image_picker/image_picker.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Stand Meter Produksi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const  Color(0xFF1650C0)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
