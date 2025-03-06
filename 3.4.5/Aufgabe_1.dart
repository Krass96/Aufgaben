void main() {
  Map<String, int> namePoints = {
    'Julietta': 4,
    'Benjamino': 5,
    'Hans-Günther': 4,
    'Evalinea': 2,
    'Fiona': 6,
    'Gregory': 6,
    'Leonhart': 3,
  };
  for (String name in namePoints.keys) {
    print('Name: $name');
  }

  for (int points in namePoints.values) {
    print('Punkte: $points');
  }

  for (String name in namePoints.keys) {
    print('$name: ${namePoints[name]} Punkte');
  }
}
