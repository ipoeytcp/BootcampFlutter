void main(List<String> args) {
  var h = Human();
  print("luffy");
  print("zoro");
  print("killer");
  h.getData().then((_) {
    print("name 3: " + h.name);
  });
  print(h.name);
}

class Human {
  String name = "nama character one piece";
  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = "hilmy";
    print("get data[done]");
  }
}
