void main() {
  var mahasiswa = {'nama': 'Rudi', 'usia': 23};
  mahasiswa['universitas'] = 'Gunadarma';
  mahasiswa
      .addAll({'fakultas': 'Teknik Industri', 'jurusan': 'Teknik Informatika'});
  print(mahasiswa);
  // Get all Keys
  print("Keys : ${mahasiswa.keys}");
  // Get all values
  print("Values : ${mahasiswa.values}");
  // Length of Map
  print("Jumlah isi Map : ${mahasiswa.length}");
//isEmpty function
  print(mahasiswa.isEmpty);
//isNotEmpty function
  print(mahasiswa.isNotEmpty);
}
