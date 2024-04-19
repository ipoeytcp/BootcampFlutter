import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:autentikasiproject/latihan/latihan1/model/postmodel.dart';

class Services {
  Future<List<Postmodel>?> getallposts() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException("Connection Time Out Try Again");
      });

      // ignore: unrelated_type_equality_checks
      if (response == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => Postmodel.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
    return null;
  }
}
