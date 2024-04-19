import 'package:autentikasiproject/latihan/latihan1/model/postmodel.dart';
import 'package:autentikasiproject/latihan/latihan1/services/services.dart';
import 'package:get/get.dart';

class AppController extends GetxController{
var getPosts = <Postmodel>[].obs;
Services services = Services();
var postloading = true.obs;
@override
void onInit(){
  callpostmethod();
  super.onInit();
}
callpostmethod() async{
  try {
    postloading.value = true;
    var result = await services.getallposts();
    if(result != null){
      getPosts.assignAll(result);
    } else {
      print("null");
    }
  }finally{
    postloading.value = false;
  }
  update();
}
}