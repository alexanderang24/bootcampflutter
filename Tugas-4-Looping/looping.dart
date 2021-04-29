import 'dart:io';

void main() {
//soal 1
  var i = 0;

  print("LOOPING PERTAMA");
  while (i < 20) {
    i += 2;
    print("$i - I love coding");
  }

  print("LOOPING KEDUA");
  while (i > 0) {
    print("$i - I will become a mobile developer");
    i -= 2;
  }

// soal 2
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 1) {
      if (i % 3 == 0) {
        print("$i - I Love Coding");
      } else {
        print("$i - Santai");
      }
    } else {
      print("$i - Berkualitas");
    }
  }

// soal 3
  for (var i = 0; i < 4; i++) {
    for (var j = 0; j < 8; j++) {
      stdout.write('#');
    }
    stdout.write('\n');
  }

// soal 4
  for (var i = 0; i < 7; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write('#');
    }
    stdout.write('\n');
  }
}
