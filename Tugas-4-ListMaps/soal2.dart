void main(List<String> args) {
print(rangeWithStep(1, 12, 2));
print(rangeWithStep(11, 1, 2));
print(rangeWithStep(20, 12, 2));
print(rangeWithStep(20, 20, 2));
print(rangeWithStep(1, 1, 2));
} rangeWithStep(startNum, finishNum, step) {
var rangeArr = [];
if (startNum > finishNum) {
var currentNum = startNum;
for (var i = 0; currentNum >= finishNum; i++) {
rangeArr.add(currentNum);
currentNum -= step;
}
} else if (startNum < finishNum) {
var currentNum = startNum;
for (var i = 0; currentNum <= finishNum; i++) {
rangeArr.add(currentNum);
currentNum += step;
}
} else {
return 1;
} return rangeArr;
}