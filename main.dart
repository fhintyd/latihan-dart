import 'dart:io';

void cls() {
  // http://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
  print("\x1B[2J\x1B[0;0H"); // clear entire screen, move cursor to 0;0
}

void hold() {
  stdout.write("\nTekan tombol ENTER untuk melanjutkan ");
  stdin.readLineSync();
}

int factorialRecursive(int value) {
  if (value == 1) {
    stdout.write("$value = ");
    return 1;
  } else {
    stdout.write("$value x ");
    return value * factorialRecursive(value - 1);
  }
}

String dateToString(DateTime dt) {
  List<String> hari = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jum\'at',
    'Sabtu',
    'Minggu'
  ];
  List<String> bulan = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];
  return '${hari[dt.weekday - 1]}, ${dt.day} ${bulan[dt.month - 1]} ${dt.year}';
}

void main() {
  bool goExit = false;
  while (!goExit) {
    cls();
    print(
        'Kalkulator\nNIP : ARN241-12056\nMenu:\n1. Penambahan\n2. Perkalian\n3. Faktorial\n4. Tanggal hari ini\n5. Keluar');

    //print("Please enter number only\nEnter number:");
    stdout.write("\nMasukkan angka 1 s/d 5\n=> ");
    try {
      int? number = int.parse(stdin.readLineSync()!);
      int angka1 = 285;
      int angka2 = 286;
      switch (number) {
        case 1:
          //Penambahan
          cls();
          print('Penambahan $angka1 dengan $angka2 adalah ${angka1 + angka2}');
          hold();
          break;
        case 2:
          //Perkalian
          cls();
          print('Perkalian $angka1 dengan $angka2 adalah ${angka1 * angka2}');
          hold();
          break;
        case 3:
          //Faktorial
          cls();
          int nilai = 5;
          print('Faktorial dari $nilai adalah :');
          print(factorialRecursive(nilai));
          hold();
          break;
        case 4:
          //Tanggal hari ini
          cls();
          print('Tanggal hari ini adalah : ${dateToString(DateTime.now())}');
          hold();
          break;
        case 5:
          //Keluar
          goExit = true;
          break;
        default:
          /*print("\nMasukkan angka sesuai menu!\n");
          stdout.write("Tekan tombol  Enter! ");*/
          break;
      }

      //goExit = true;
    } catch (e) {
      /*print("\nMasukkan angka sesuai menu!\n");
      stdout.write("Tekan tombol  Enter! ");
      stdin.readLineSync();*/
    }
  }
}
