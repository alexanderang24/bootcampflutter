void main() {
  Segitiga segitiga = new Segitiga();
  segitiga.alas = 6;
  segitiga.tinggi = 10;
  print(segitiga.getLuas());
}

class Segitiga {
  double alas = 0;
  double tinggi = 0;

  double getLuas() {
    return 0.5 * alas * tinggi;
  }
}
