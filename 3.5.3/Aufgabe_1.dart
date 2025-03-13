void main() {
  int x = sum(10, 20, 30);
  int y = sum(15, 25, 35);
  int z = sum(11, 22, 33);

  print(x);
  print(y);
  print(z);
}

int sum(int a, int b, int c) {
  int result = a + b + c;
  return result;
}
