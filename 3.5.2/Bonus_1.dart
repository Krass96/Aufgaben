void main() {
  convertMinutesToTime(250);
  convertMinutesToTime(120);
  convertMinutesToTime(90);
}

// x = Stunden, y = Minuten
void convertMinutesToTime(int minutes) {
  int x = minutes ~/ 60;
  int y = minutes % 60;
  print('$x Stunden und $y Minuten');
}
