import 'package:flutter/material.dart';
import 'package:ismproduksi/screens/akun_profil.dart';
import 'package:ismproduksi/screens/dashboard.dart';
import 'package:ismproduksi/screens/halaman_pencarian.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> body = [
    const Dashboard(),
    const HalamanPencarian(),
    const AkunProfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: const Color(0xFF1650C0),
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white60,
              ),
              
              label: "Beranda",
              activeIcon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white60,
              ),
              label: "Cari Data",
              activeIcon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white60,
              ),
              label: "Profil",
              activeIcon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
      void ontap(int index) {
      setState(() {
        currentIndex = index;
      });
    }
}
