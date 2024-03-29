void main(List<String> args) {
print(range(1, 20));
print(range(10, 0));
print(range(12, 12));
print(range(0, 0));
} range(startNum, finishNum) {
var list = [];
if (startNum > finishNum) {
var rangelength = startNum - finishNum + 1;
for (var i = 0; i < rangelength; i++) {
list.add(startNum - i);
}
} else if (startNum < finishNum) {
var rangelength = finishNum - startNum + 1;
for (var i = 0; i < rangelength; i++) {
list.add(startNum + i);
}
} else {
return 1;
} return list;
}