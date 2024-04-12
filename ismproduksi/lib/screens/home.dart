//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ismproduksi/widget/history_catatan.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
import 'package:ismproduksi/widgets/menu_utama.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],),
      appBar: AppBar(backgroundColor: const Color(0xFF1650C0),
      automaticallyImplyLeading: false,
      title: const Text("ISM Produksi", style: TextStyle(color: Colors.white),),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.8),
                    ),
                  hintText: "Cari Data Unit Produksi",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: 70,
                        height: 70,
                        decoration:  BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/ipoey.png"),
                            fit: BoxFit.fitHeight,
                            ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xFF1650C0),
                          style: BorderStyle.solid,
                          width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("SYAIFUL HADI", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Kabag Jaringan & PKA"),
                    Text("Cabang Medan Kota")]
                    ),
                  ],
                ),
            ),
            const SizedBox(height: 20,),
          Column(
            children: [
              Container(
                width: 370,
                height: 150,
                decoration:  BoxDecoration(
                  image: const DecorationImage(
                            image: AssetImage("assets/images/banner.png"),
                            fit: BoxFit.cover,
                            ),
                  //color: const Color(0xFF1650C0),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 214, 215, 216),
                          style: BorderStyle.solid,
                          width: 2,
                  )
                ),
              ),
                const SizedBox(height: 18,),
            ],
          ),
           const Padding(
             padding: EdgeInsets.only(left: 20.0),
             child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Menu Utama", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
           ),
                const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    MenuUtama(imagePath: "assets/images/person.png", title: "Profil"),
                    MenuUtama(imagePath: "assets/images/data.png", title: "ISM"),
                    MenuUtama(imagePath: "assets/images/unit_produksi.png", title: "Unit"),
                    MenuUtama(imagePath: "assets/images/report.png", title: "Rekap"),
                  ],
                ),
              ),
            const Padding(
             padding: EdgeInsets.only(left: 20.0),
             child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Catatan Terakhir", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
           ),
           const CatatanTerakhir(
            imagePath: "assets/images/kpp.jpg",
            unitProduksi: "Sumur Bor Starban",
            jenisUnit: "Sumur Bor",
            periodeCatat: "01/2024",
            jumlahProduksi: "12.000 M3"
            ),
           const SizedBox(height: 15,),
           const CatatanTerakhir(
            imagePath: "assets/images/lab.jpg",
            unitProduksi: "WTP Karsa",
            jenisUnit: "WTP",
            periodeCatat: "01/2024",
            jumlahProduksi: "8.000 M3"
            ),
            const CatatanTerakhir(
            imagePath: "assets/images/ME.jpg",
            unitProduksi: "IPA Deli Tua",
            jenisUnit: "IPA",
            periodeCatat: "01/2024",
            jumlahProduksi: "128.000 M3"
            )
          ],
          
        ),
      ),
    );
  }
}


