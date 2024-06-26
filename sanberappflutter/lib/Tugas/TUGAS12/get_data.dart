import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/Tugas/TUGAS12/get_data_detail_screen.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://reqres.in/api/users?page=2";
  List? data;
  @override
  void initState() {
    _getRefreshDaata();
    super.initState();
  }

  Future<void> _getRefreshDaata() async {
    this.getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "aplication/json"});
        //await http.get(Uri.parse(url), headers: {"Accept": "aplication/json"});
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data API Regres"),
      ),
      body: RefreshIndicator(
        onRefresh: _getRefreshDaata,
        child: data == null
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: data == null ? 0 : data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GetDetailDataScreen(
                                      value: data![index]["id"])),
                            );
                            print(data![index]["id"]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.network(
                                    data![index]["avatar"],
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text(data![index]["first_name"] +
                                        "" +
                                        data![index]["last_name"]),
                                    Text(data![index]["email"]),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider()
                      ],
                    ),
                  );
                })));
  }
}
