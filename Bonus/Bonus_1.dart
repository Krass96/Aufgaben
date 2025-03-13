void main() {
  print(bigNum(5, 3));
  print(bigNum(10, 100));
  print(bigNum(0, 1));
  print(bigNum(10, -10));
}

int bigNum(int a, int b) {
  return (a > b) ? a : b;
}
