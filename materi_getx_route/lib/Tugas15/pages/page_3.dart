import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:materi_getx_route/Tugas15/routes/route_name.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman 3"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_2);
                },
                child: const Text("Kembali Ke Halaman 2")),
           
          ],
        ),
      ),
    );
  }
}
