void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Günther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];
  int sum = 0;
  int listLenght = 7;
  double averageSum = 0.0;

  for (int p in points) {
    sum = sum + p;
    averageSum = sum / listLenght;
  }
  print(averageSum);
}
