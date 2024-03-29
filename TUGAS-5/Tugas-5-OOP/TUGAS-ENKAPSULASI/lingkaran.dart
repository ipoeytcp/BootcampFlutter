class Lingkaran {
  late double _pi;
  late double _jarijari;
  void set pi(double value) {
    if (value < 0) {
      value *= -1;
    }
    _pi = value;
  }
  double get pi {
    return _pi;
  }

  void set jarijari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _jarijari = value;
  }

  double get jarijari {
    return _jarijari;
  }

  double get luas => _pi * _jarijari * _jarijari;
}
