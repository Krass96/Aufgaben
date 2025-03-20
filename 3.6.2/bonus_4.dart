import 'bonus_3.dart';

void main() {
  //1. Erstelle eine Instanz der Klasse
  Rectangle i = Rectangle(9, 8);

  // 2.Berechne die Fläche und gebe sie aus
  i.calculateCircumference();
  {
    print('Circumference: ${i.calculateCircumference()}');
  }

  // 3.Berechne den Umfang und gebe ihn aus
  i.calculateArea();
  {
    print('Area: ${i.calculateArea()}');
  }

  // 4.Ändere die Werte der Attribute
  i.edgeLength = 10;

  // 5.Berechne die Fläche und gebe sie aus
  i.calculateCircumference();
  {
    print('Circumference: ${i.calculateCircumference()}');
  }

  // 6.Berechne den Umfang und gebe ihn aus
  i.calculateArea();
  {
    print('Area: ${i.calculateArea()}');
  }
}
