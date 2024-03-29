import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran;
  double luasLingkaran;
  lingkaran = new Lingkaran();
  lingkaran.pi = 3.14;
  lingkaran.jarijari = 7.0;
  luasLingkaran = lingkaran.luas;
  print(luasLingkaran);
}
