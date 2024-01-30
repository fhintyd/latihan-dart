String salam(String name, {String title = ''}) {
  if (title.isEmpty) {
    return 'Halo $name!';
  }
  return 'Halo $title $name!';
}

void main() {
  print(salam('Iwan'));
  print(salam('Ali', title: 'Dokter'));
  print(salam(title: 'Dokter', 'Zainal'));
}
