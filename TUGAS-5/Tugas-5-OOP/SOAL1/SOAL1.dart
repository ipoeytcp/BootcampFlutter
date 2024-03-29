class Segitiga {
  late double setengah;
  late double alas;
  late double tinggi;
  double hitungLuas() {
    return this.setengah * this.alas * this.tinggi;
  }
}

void main(List<String> args) {
  Segitiga segitiga;
  double luasSegitiga;
  segitiga = new Segitiga();
  segitiga.setengah = 0.5;
  segitiga.alas = 20.0;
  segitiga.tinggi = 20;
  luasSegitiga = segitiga.hitungLuas();
  print(luasSegitiga);cd ..
}
