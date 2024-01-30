void main() {
  // Integer List
  List<int> umur = [16, 18, 21];
  print("List Tipe Integer : $umur");

  // String List
  List<String> nama = ["Iwan", "Wati", "Susi"];
  print("List Tipe String : $nama");

  // Mixed List
  var mixed = [10, "Rudi", 18.8];
  print("List dengan Tipe Campuran : $mixed\n");

  // Loops
  nama.forEach((e) {
    print("$e berusia ${umur[nama.indexOf(e)]}");
  });
}
