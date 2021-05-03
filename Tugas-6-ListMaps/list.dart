import 'dart:io';

void main() {
  // soal 1
  print(range(1, 10));

  // soal 2
  print(rangeWithStep(1, 10, 2));

  // soal 3
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/010/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];
  dataHandling(input);

  // soal 4
  print(balikKata("Kasur"));
  print(balikKata("SanberCode"));
  print(balikKata("Haji"));
  print(balikKata("racecar"));
  print(balikKata("Sanbers"));
}

range(startNum, finishNum) {
  List<int> list = [];
  if (startNum <= finishNum) {
    for (var i = startNum; i <= finishNum; i++) {
      list.add(i);
    }
  } else {
    for (var i = startNum; i >= finishNum; i--) {
      list.add(i);
    }
  }
  return list;
}

rangeWithStep(startNum, finishNum, step) {
  List<int> list = [];
  if (startNum <= finishNum) {
    for (var i = startNum; i <= finishNum; i += step) {
      list.add(i);
    }
  } else {
    for (var i = startNum; i >= finishNum; i -= step) {
      list.add(i);
    }
  }
  return list;
}

dataHandling(input) {
  for (var i = 0; i < input.length; i++) {
    print("Nomor ID: " + input[i][0]);
    print("Nama Lengkap: " + input[i][1]);
    print("TTL: " + input[i][2] + " " + input[i][3]);
    print("Hobi: " + input[i][4]);
    stdout.write('\n');
  }
}

balikKata(input) {
  List<String> list = [];
  for (var i = input.length - 1; i >= 0; i--) {
    list.add(input[i]);
  }
  return list.join();
}
