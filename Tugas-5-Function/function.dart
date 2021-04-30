void main() {
// soal 1
  teriak() {
    return "Halo Sanbers!";
  }

  print(teriak());

// soal 2
  kalikan(x, y) {
    return x * y;
  }

  var num1 = 12;
  var num2 = 4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

// soal3
  introduce(name, age, address, hobby) {
    return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
  }

  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

// soal 4
  faktorial(angka) {
    if (angka > 1) {
      return angka * faktorial(angka - 1);
    } else {
      return angka;
    }
  }

  var angka = 6;
  print(faktorial(angka));
}
