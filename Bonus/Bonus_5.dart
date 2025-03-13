void main() {
  print(sumLetter('Krasimir Varnaliev', 'r'));
  print(sumLetter('AppAkademie', 'a'));
  print(sumLetter('Programmieren', 'm'));
}

int sumLetter(String text, String letter) {
  int sum = 0;
  for (int i = 0; i < text.length; i++) {
    if (text[i] == letter) {
      sum++;
    }
  }
  return sum;
}
