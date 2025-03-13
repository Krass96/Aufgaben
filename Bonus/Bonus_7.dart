void main() {
  print(testNum(5));
  print(testNum(4));
  print(testNum(0));
  print(testNum(-3));
}

String testNum(int num) {
  switch (num.sign) {
    case 1:
      return 'positiv';
    case -1:
      return 'negativ';
    case 0:
      return 'null';
    default:
      return 'unbekannt';
  }
}
