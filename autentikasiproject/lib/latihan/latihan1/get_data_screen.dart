import 'package:autentikasiproject/latihan/latihan1/controller/appcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDataScreenManagement extends StatelessWidget {
  // ignore: use_super_parameters
  const GetDataScreenManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Manegement getX"),
      ),
      body: Column(
        children: [
          Expanded(child: Obx(() {
            var controller;
            return controller.postloading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.getposts.length,
                    itemBuilder: (context, index) {
                      var item = controller.getposts[index];
                      return Card(
                        child: ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.title),
                          leading: Text(item.id.toString()),
                        ),
                      );
                    });
          }))
        ],
      ),
    );
  }
}
