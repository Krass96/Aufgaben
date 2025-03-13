void main() {
  print(isLetter('Krasimir Varnaliev', 'r'));
  print(isLetter('AppAkademie', 's'));
  print(isLetter('Programmieren', 'm'));
}

bool isLetter(String text, String letter) {
  return text.contains(letter);
}
