// Aufgabe: Temperatur-Durchschnittsberechnung mit Null Safety
// ================================================================

// Beschreibung:
// In dieser Aufgabe arbeitest du mit einer Liste von Temperaturwerten,
// die teilweise null-Werte enthält. Deine Aufgabe ist es, die
// Durchschnittstemperatur zu berechnen, wobei die null-Werte
// korrekt behandelt werden müssen.

void main() {
  // Liste mit Temperaturwerten (in Grad Celsius)
  // Einige Werte sind null (z.B. wenn ein Sensor ausgefallen ist)
  final List<double?> temperaturDaten = [
    22.5,
    null,
    18.3,
    25.7,
    null,
    19.2,
    23.8,
    null,
    20.5,
    17.9,
    null,
    24.3,
  ];

  // TODO: Berechne die Durchschnittstemperatur aller nicht-null Werte

  // 1. Erstelle eine neue Liste, die nur die gültigen Temperaturwerte enthält

  List<double> gueltigeTemperaturWerten = [];
  for (double? temperatur in temperaturDaten) {
    if (temperatur != null) {
      gueltigeTemperaturWerten.add(temperatur);
    }
  }

  // 2. Berechne die Summe aller gültigen Temperaturen

  double sumGultigeTemperaturWerten = 0;
  for (double temperatur in gueltigeTemperaturWerten) {
    sumGultigeTemperaturWerten += temperatur;
  }
  // 3. Berechne den Durchschnitt (Summe / Anzahl)

  double durchschnitt =
      sumGultigeTemperaturWerten / gueltigeTemperaturWerten.length;

  // Hinweis: Null-Werte dürfen nicht in die Berechnung einfließen!

  // Am Ende soll die Durchschnittstemperatur ausgegeben werden, z.B.:
  // print('Die Durchschnittstemperatur beträgt: $durchschnitt °C');

  print('Die Durchschnittstemperatur beträgt: $durchschnitt °C');
}
