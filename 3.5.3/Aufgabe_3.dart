void main() {
  String t = 'AppAkademie';
  String e = 'Batch9';
  String x = 'Krasimir';
  String s = 'Varnaliev';

  print(letterVokale(t));
  print(letterVokale(e));
  print(letterVokale(x));
  print(letterVokale(s));
}

int letterVokale(String t) {
  int sum = 0;
  String vokal = 'A, a, e, i';
  for (int i = 0; i < t.length; i++) {
    if (vokal.contains(t[i])) {
      sum++;
    }
  }
  return sum;
}
