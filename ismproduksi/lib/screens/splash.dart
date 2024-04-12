


import 'package:flutter/material.dart';
//import 'package:ismproduksi/screens/home.dart';
import 'package:ismproduksi/screens/login.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:ismproduksi/screens/home.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

     Future.delayed(const Duration(seconds: 3)).then((value) {
       Navigator.of(context).pushAndRemoveUntil(
         MaterialPageRoute(
           builder: (context) =>  const LoginScreen(),
           ), 
           (route) => false);
     }
     );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              children: [
                const SizedBox(height: 164,),
                Image.asset("assets/images/logo2.png", width: 91, height: 97,),
                const SizedBox(height: 35,),
                const Text("INPUT STAND METER", style: TextStyle(
                  color: Color(0xFF1650C0),
                  fontSize: 20,
                  ),
                  ),
                const Text("PRODUKSI", style: TextStyle(
                  color: Color(0xFF1650C0),
                  fontSize: 20,
                  fontWeight: FontWeight.w800
                  ),
                  ),
                const SizedBox(height: 350,),
                const Text("Divisi SIM 2024", style: TextStyle(
                  color: Color(0xFF1650C0),
                  fontSize: 20,
                  fontWeight: FontWeight.w800
                  ),
                  ),  
              ],
          ),
        )
      ) 
    );
      
  }
}