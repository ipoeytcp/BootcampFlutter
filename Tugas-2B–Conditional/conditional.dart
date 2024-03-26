//SOAL NO 1

//  import 'dart:io';

// void main(List<String> args) {
//   print("Akan Install Aplikasi ? Silahkan pilih Y atau T");
//   String? inputText = stdin.readLineSync()!;
//   var jawaban = inputText;
//   if (jawaban == "Y") {
//     print("Anda Akan Menginstall Aplikasi DART");
//   } else if (jawaban == "T") {
//     print("ABORTED");
//   } else {
//     print("PILIHAN SALAH, SILAHKAN PILIHAN Y ATAU T");
//   }
// }
 
// SOA NO 2 
// import 'dart:io';
// void main() {
// print("nama : ");
// String? masukanNama = stdin.readLineSync();
// print("masukan Peran : ");
// String? masukanPeran = stdin.readLineSync();
// if (masukanNama == "" && masukanPeran == "") {
// print("masukan nama dan juga peran anda");
// } else if (masukanNama == "john" && masukanPeran == "") {
// print("Hello John Pilih peranmu untuk memulai game!");
// } else if (masukanNama == "jane" && masukanPeran == "penyihir") {
// print("selamat datang di Dunia Werewolf, Jane\nHalo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!");
// } else if (masukanNama == "jenita" && masukanPeran == "guard") {
// print("Selamat datang di Dunia Werewolf, Jenita\nHalo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf.");
// } else if (masukanNama == "junaedi" && masukanPeran == "werewolf") {
// print( "Selamat datang di Dunia Werewolf, Junaedi \nHalo Werewolf Junaedi, Kamu akan memakan mangsa setiap malam!");
// } else {
// print("kamu akan menjadi penonton");
// }
// }

// SOAL No 3
/* 
import 'dart:io';
void main() {
print("Quote Harian");
stdout.write("input hari : ");
String? hari = stdin.readLineSync();
String quoute;
switch (hari){
case "senin":
{
quoute =
"Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.";
break;
}
case "selasa":
{
quoute =
"Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.";
break;
}
case "rabu":
{
quoute =
"Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.";
break;
}
case "kamis":
{
quoute =
"Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.";
break;
}
case "jumat":
{
quoute =
"Hidup tak selamanya tentang pacar.";
break;
}
case "sabtu":
{
quoute =
"Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.";
break;
}
case "minggu":
{
quoute =
"Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.";
break;
}
default:
{
quoute = "Tetap Semangat, Apapun harimu";
}
}print(quoute);
}
 */

//SOAL NO 4

void main() {
const tanggal = 21;
const bulan = 11;
const tahun = 2023;
var teksBulan;
switch (true) {
case (tanggal < 1 || tanggal > 31):
{
print("input tanggal salah");
break;
}
case (tahun < 1900 || tahun > 2200):
{
print("input tahun salah");
break;
}
case (bulan > 12 || bulan < 1):
{
print("input bulan salah");
break;
}
default:
{
switch (true) {
case bulan == 1:
teksBulan = "Januari";
break;
case bulan == 2:
teksBulan = "Februari";
break;
case bulan == 3:
teksBulan = "Maret";
break;
case bulan == 4:
teksBulan = "April";
break;
case bulan == 5:
teksBulan = "Mei";
break;
case bulan == 6:
teksBulan = "Juni";
break;
case bulan == 7:
teksBulan = "Juli";
break;
case bulan == 8:
teksBulan = "Agustus";
break;
case bulan == 9:
teksBulan = "September";
break;
case bulan == 10:
teksBulan = "Oktober";
break;
case bulan == 11:
teksBulan = "Nopember";
break;
case bulan == 12:
teksBulan = "Desember";
break;
default:
break;
} print(tanggal); print(teksBulan); print(tahun);
break;
}
}
}