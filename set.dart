void main() {
  var buah = <String>{"Apael", "Jeruk", "Nanas"};
  buah.add("Anggur");
  buah.add("Pepaya");

  print("\nAda ${buah.length} dalam Set nama-nama buah");
  print(buah);

  var nama_buah = "Sirsak";
  print("\nApakah buah $nama_buah di dalam Set?");

  if (buah.contains(nama_buah)) {
    print("Buah $nama_buah ada di dalam Set\n");
  } else {
    print("Buah $nama_buah tidak ada di dalam Set\n");
  }
}
