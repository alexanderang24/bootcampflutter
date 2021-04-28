import 'dart:io';

void main() {
  // soal 1
  // print("Install aplikasi dart? (y/t)");
  // var answer = stdin.readLineSync()!;
  // if (answer.toUpperCase() == "Y") {
  //   print("anda akan menginstall aplikasi dart");
  // } else if (answer.toUpperCase() == "T") {
  //   print("aborted");
  // } else {
  //   print("jawaban tidak diketahui");
  // }

  // soal 2
  // String nama, peran;
  // print("Input nama:");
  // nama = stdin.readLineSync()!;
  // if (nama.isEmpty) {
  //   print("Nama harus diisi!");
  // } else {
  //   print("Input peran: [penyihir/guard/werewolf]");
  //   peran = stdin.readLineSync()!;
  //   if (peran.isEmpty) {
  //     print("Halo " + nama + ", pilih peranmu untuk memulai game");
  //   } else {
  //     print("Selamat datang di dunia Werewolf, " + nama);
  //     if (peran.toLowerCase() == "penyihir") {
  //       print("Halo Penyihir " + nama + ", kamu dapat melihat siapa yang menjadi werewolf!");
  //     } else if (peran.toLowerCase() == "guard") {
  //       print("Halo Guard " + nama + ", kamu akan membantu melindungi temanmu dari serangan werewolf!");
  //     } else if (peran.toLowerCase() == "werewolf") {
  //       print("Halo Werewolf " + nama + ", kamu akan memakan mangsa setiap malam!");
  //     } else {
  //       print("Hei " + peran + " " + nama + "! Kamu tidak berperan apa-apa terhadap bangsa ini!");
  //     }
  //   }
  // }

  // soal 3
  // print("Ini hari apa ya?");
  // String hari = stdin.readLineSync()!;
  // switch (hari.toLowerCase()) {
  //   case "senin":
  //     print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
  //     break;
  //   case "selasa":
  //     print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
  //     break;
  //   case "rabu":
  //     print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
  //     break;
  //   case "kamis":
  //     print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
  //     break;
  //   case "jumat":
  //     print("Hidup tak selamanya tentang pacar.");
  //     break;
  //   case "sabtu":
  //     print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
  //     break;
  //   case "minggu":
  //     print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
  //     break;
  //   default:
  //     print("mana ada hari itu..");
  // }

  // soal 4
  var hari = 31;
  var bulan = 9;
  var tahun = 2021;
  var namaBulan;

  // validasi general
  if (hari < 1 || hari > 31 || tahun < 1900 || tahun > 2200 || bulan < 1 || bulan > 12) {
    print("tanggal salah!");
  }
  // validasi bulan februari tahun kabisat dan non kabisat
  else if ((bulan == 2 && tahun % 4 == 0 && hari > 29) || (bulan == 2 && tahun % 4 != 0 && hari > 28)) {
    print("tanggal salah!");
  }
  // validasi bulan yang tanggalnya hanya sampai 30
  else if ((bulan < 8 && bulan % 2 == 0 && hari > 30) || (bulan >= 8 && bulan % 2 == 1 && hari > 30)) {
    print("tanggal salah!");
  }
  // lolos validasi
  else {
    switch (bulan) {
      case 1:
        namaBulan = "Januari";
        break;
      case 2:
        namaBulan = "Februari";
        break;
      case 3:
        namaBulan = "Maret";
        break;
      case 4:
        namaBulan = "April";
        break;
      case 5:
        namaBulan = "Mei";
        break;
      case 6:
        namaBulan = "Juni";
        break;
      case 7:
        namaBulan = "Juli";
        break;
      case 8:
        namaBulan = "Agustus";
        break;
      case 9:
        namaBulan = "September";
        break;
      case 10:
        namaBulan = "Oktober";
        break;
      case 11:
        namaBulan = "November";
        break;
      case 12:
        namaBulan = "Desember";
        break;
    }
    print("$hari $namaBulan $tahun");
  }
}
