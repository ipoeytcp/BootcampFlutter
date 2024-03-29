var input = [
["0001", "Roman Alamsyah", "bandar Lampung",
"21/05/1989", "membaca"],
["0002", "Dika Sembiring", "Medan", "10/05/1992",
"Bermain Gitar"],
["0003", "Winona", "Ambon", "25/12/1965",
"Memasak"],
["0004", "Bintang Senjaya", "Martapura",
"6/04/1970", "Berkebun"],
];
dataHandling(data) {
var dataLength = data.length;
for (var i = 0; i < dataLength; i++) {
var id = "Nomor ID : " + data[i][0];
var nama = "Nama Lengkap : " + data[i][1];
var ttl = "TTL : " + data[i][2] + ", " +
data[i][3];
var hobi = "Hobi : " + data[i][4];
print(id);
print(nama);
print(ttl);
print(hobi);
print("");
}
} void main(List<String> args) {
dataHandling(input);
}