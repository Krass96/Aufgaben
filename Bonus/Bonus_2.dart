void main() {
  print(isGerade(5));
  print(isGerade(4));
  print(isGerade(0));
  print(isGerade(-3));
}

bool isGerade(int a) {
  return a % 2 == 0;
}
