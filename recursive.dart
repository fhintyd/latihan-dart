int recursiveSum(int num) {
  return (num == 0) ? 0 : num += recursiveSum(num - 1);
}

void main() {
  //final hasil = recursiveSum(5);
  //print(hasil);
  print(recursiveSum(5));
  print(5 + 4 + 3 + 2 + 1 + 0);
}
