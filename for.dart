void main() {
  final planet = [
    "Merkurius",
    "Venus",
    "Bumi",
    "Mars",
    "Jupiter",
    "Saturnus",
    "Uranus",
    "Neptunus"
  ];
  for (int i = 0; i < planet.length; i++) {
    print("${i + 1}.${planet[i]}");
  }
  print("\nUrutannya dibalik:");
  for (int i = planet.length - 1; i >= 0; i--) {
    print("${i + 1}.${planet[i]}");
  }
}
