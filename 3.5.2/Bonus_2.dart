void main() {
  List<int> grades = [2, 1, 3];
  analyzeGrades(grades);
}

// Erstelle zwei Funktionen:
void printGrades(List<int> grades) {
  // Gibt alle Noten nacheinander aus
  // z.B.: Note 1: 2, Note 2: 1, Note 3: 3
  int note1 = 2;
  int note2 = 1;
  int note3 = 3;
  print("Note 1: $note1, Note 2: $note2, Note 3: $note3");
}

void calculateAndPrintAverage(List<int> grades) {
  // Berechnet den Durchschnitt und gibt aus:
  // "Der Durchschnitt ist: 2.0"
  printGrades(grades);
  int note1 = 2;
  int note2 = 1;
  int note3 = 3;
  int sum = note1 + note2 + note3;
  double durchschnitt = sum / grades.length;
  print("Der Durchschnitt ist: $durchschnitt");
}

// Hauptfunktion:
void analyzeGrades(List<int> grades) {
  // Ruft beide Funktionen nacheinander auf
  printGrades(grades);
  calculateAndPrintAverage(grades);
}
