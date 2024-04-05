import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 40),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Temukan", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ) ,
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Pekerjaan Impianmu", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Cari Ppekerjaanmu dan Posisimu")
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Pekerjaan Untuk Mu", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                jobs_item(context)
                ],
                ),
              ),
          ),
        );
  }
}
Container jobs_item(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xffE9FFEB), 
              borderRadius: BorderRadius.circular(10)
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/gojek.png", 
                height: 20, 
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("Digital Marketing", 
              style: titleStyle(),
          ),
              SizedBox(
                height: 16,
              ),
              Text("1-3 Tahun Pengalaman", 
              style: subTitle(),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Full Time", 
                  style: positionText(),
                  ),
              SizedBox(
                height: 16,
              ),
              Text("Senior",
              style: positionText(),
              ),    
            ],
          ),
        ],
      ),
    ),
    Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Color(0xffE9FFEB), borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/shopee.png", 
                height: 20, 
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("COntent Creator", 
              style: titleStyle(),
          ),
              SizedBox(
                height: 16,
              ),
              Text("1-3 Tahun Pengalaman", 
              style: subTitle(),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Full Time", 
                  style: positionText(),
                  ),
              SizedBox(
                height: 16,
              ),
              Text("Internship",
              style: positionText(),
              ),    
            ],
          ),
        ],
      ),
    ),
    Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Color(0xffE9FFEB), borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/bukalapak.png", 
                height: 20, 
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("Front End Dev", 
              style: titleStyle(),
          ),
              SizedBox(
                height: 16,
              ),
              Text("1-3 Tahun Pengalaman", 
              style: subTitle(),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Full Time", 
                  style: positionText(),
                  ),
              SizedBox(
                height: 16,
              ),
              Text("Senior",
              style: positionText(),
              ),    
            ],
          ),
        ],
      ),
    ),
Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Color(0xffE9FFEB), borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/blibli.png", 
                height: 20, 
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("UX Designer", 
              style: titleStyle(),
          ),
              SizedBox(
                height: 16,
              ),
              Text("1-3 Tahun Pengalaman", 
              style: subTitle(),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Full Time", 
                  style: positionText(),
                  ),
              SizedBox(
                height: 16,
              ),
              Text("Senior",
              style: positionText(),
              ),    
            ],
          ),
        ],
      ),
    ),
  ],
  ),
  );
}

TextStyle positionText() {
  return TextStyle(color: Colors.grey, fontWeight: FontWeight.w400);
}

TextStyle subTitle() => TextStyle(fontWeight: FontWeight.w500);

TextStyle titleStyle() {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
}