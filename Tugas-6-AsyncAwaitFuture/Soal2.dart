main(List<String> args) {
  print("life");
//print("never flat");
  delayedPrint(2, "never flat").then((status) {
    print(status);
  }).catchError((err) => print(err));
  print("is");
}

Future delayedPrint(int seconds, String message) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => message);
}
