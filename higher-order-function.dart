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

void printTanggal(DateTime dateTime, String Function(DateTime) tanggal) {
  print('${dateTime} ==> ${tanggal(dateTime)}');
}

void main() {
  printTanggal(DateTime.now(), dateToString);
}
