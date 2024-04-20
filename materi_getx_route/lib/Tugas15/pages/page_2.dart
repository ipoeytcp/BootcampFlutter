import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:materi_getx_route/Tugas15/routes/route_name.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman 2"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_3);
                },
                child: const Text("Menuju halaman tiga")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_1);
                },
                child: const Text("Kembali Ke Halaman 1"))
          ],
        ),
      ),
    );
  }
}
