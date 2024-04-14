import 'package:flutter/material.dart';
import 'package:ismproduksi/screens/detail_page.dart';
import 'package:ismproduksi/screens/home.dart';
import 'package:ismproduksi/screens/splash.dart';
import 'package:ismproduksi/widgets/lv_meter_stless.dart';
//import 'package:ismproduksi/screens/home.dart';
//import 'package:ismproduksi/screens/listview_meter.dart';
//import 'package:ismproduksi/screens/detail_page.dart';
//import 'package:ismproduksi/screens/splash.dart';
//import 'package:ismproduksi/widgets/data_catatan.dart';

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
