import 'dart:convert';

void main() {
  // Aufgabe 1: Namen ausgeben
  print("=== Aufgabe 1 ===");
  final jsonString1 = '{"name": "Lisa", "age": 25}';
  final data1 = jsonDecode(jsonString1);
  print("Name: ${data1['name']}");

  // Aufgabe 2: Preis anzeigen
  print("\n=== Aufgabe 2 ===");
  final jsonString2 = '{"product": {"title": "Schreibtisch", "price": 120.5}}';
  final data2 = jsonDecode(jsonString2);
  print("Preis: ${data2['product']['price']}");

  // Aufgabe 3: Durch Tags iterieren
  print("\n=== Aufgabe 3 ===");
  final jsonString3 = '{"tags": ["flutter", "dart", "api"]}';
  final data3 = jsonDecode(jsonString3);
  print("Tags:");
  for (String tag in data3['tags']) {
    print("- $tag");
  }

  // Aufgabe 4: E-Mail-Adresse anzeigen
  print("\n=== Aufgabe 4 ===");
  final jsonString4 = '{"user": {"name": "Tom", "email": "tom@example.com"}}';
  final data4 = jsonDecode(jsonString4);
  print("E-Mail: ${data4['user']['email']}");

  // Aufgabe 5: Postleitzahl ausgeben
  print("\n=== Aufgabe 5 ===");
  final jsonString5 = '{"location": {"city": "Berlin", "zip": 10115}}';
  final data5 = jsonDecode(jsonString5);
  print("Postleitzahl: ${data5['location']['zip']}");

  // Aufgabe 6: Alle Item-Namen anzeigen
  print("\n=== Aufgabe 6 ===");
  final jsonString6 =
      '{"menu": {"items": [{"name": "Burger"}, {"name": "Salat"}]}}';
  final data6 = jsonDecode(jsonString6);
  print("Menu Items:");
  for (var item in data6['menu']['items']) {
    print("- ${item['name']}");
  }

  // Aufgabe 7: Zweiten Farbwert ausgeben
  print("\n=== Aufgabe 7 ===");
  final jsonString7 = '{"colors": ["rot", "grün", "blau"]}';
  final data7 = jsonDecode(jsonString7);
  print("Zweite Farbe: ${data7['colors'][1]}");

  // Aufgabe 8: Alle Skills anzeigen
  print("\n=== Aufgabe 8 ===");
  final jsonString8 =
      '{"profile": {"name": "Anna", "skills": ["Dart", "Flutter"]}}';
  final data8 = jsonDecode(jsonString8);
  print("Skills:");
  for (String skill in data8['profile']['skills']) {
    print("- $skill");
  }

  // Aufgabe 9: Alle Produktnamen ausgeben
  print("\n=== Aufgabe 9 ===");
  final jsonString9 =
      '{"order": {"items": [{"product": "Tasse", "price": 5}, {"product": "Buch", "price": 12}]}}';
  final data9 = jsonDecode(jsonString9);
  print("Produkte:");
  for (var item in data9['order']['items']) {
    print("- ${item['product']}");
  }

  // Aufgabe 10: Temperatur in Celsius anzeigen
  print("\n=== Aufgabe 10 ===");
  final jsonString10 = '{"temperature": {"celsius": 22, "fahrenheit": 71.6}}';
  final data10 = jsonDecode(jsonString10);
  print("Temperatur in Celsius: ${data10['temperature']['celsius']}°C");

  // Aufgabe 11: Telefonnummer anzeigen
  print("\n=== Aufgabe 11 ===");
  final jsonString11 =
      '{"user": {"name": "Mia", "contact": {"phone": "123456", "email": "mia@mail.com"}}}';
  final data11 = jsonDecode(jsonString11);
  print("Telefonnummer: ${data11['user']['contact']['phone']}");

  // Aufgabe 12: Ersten Buchtitel ausgeben
  print("\n=== Aufgabe 12 ===");
  final jsonString12 =
      '{"library": {"books": [{"title": "1984"}, {"title": "Animal Farm"}]}}';
  final data12 = jsonDecode(jsonString12);
  print("Erster Buchtitel: ${data12['library']['books'][0]['title']}");

  // Aufgabe 13: Start- und Zielort anzeigen
  print("\n=== Aufgabe 13 ===");
  final jsonString13 =
      '{"flight": {"from": "Berlin", "to": "Paris", "duration": 90}}';
  final data13 = jsonDecode(jsonString13);
  print("Von: ${data13['flight']['from']} nach ${data13['flight']['to']}");

  // Aufgabe 14: Note in Englisch ausgeben
  print("\n=== Aufgabe 14 ===");
  final jsonString14 = '{"student": {"grades": {"math": 2, "english": 1}}}';
  final data14 = jsonDecode(jsonString14);
  print("Note in Englisch: ${data14['student']['grades']['english']}");

  // Aufgabe 15: Lautstärke-Wert anzeigen
  print("\n=== Aufgabe 15 ===");
  final jsonString15 = '{"settings": {"volume": 75, "brightness": 50}}';
  final data15 = jsonDecode(jsonString15);
  print("Lautstärke: ${data15['settings']['volume']}");

  // Aufgabe 16: Letzten Spielernamen ausgeben
  print("\n=== Aufgabe 16 ===");
  final jsonString16 = '{"game": {"players": ["Alice", "Bob", "Charlie"]}}';
  final data16 = jsonDecode(jsonString16);
  final players = data16['game']['players'] as List;
  print("Letzter Spieler: ${players.last}");

  // Aufgabe 17: Gesamtbetrag anzeigen
  print("\n=== Aufgabe 17 ===");
  final jsonString17 = '{"invoice": {"total": 99.99, "items": 3}}';
  final data17 = jsonDecode(jsonString17);
  print("Gesamtbetrag: ${data17['invoice']['total']}€");

  // Aufgabe 18: Event-Datum ausgeben
  print("\n=== Aufgabe 18 ===");
  final jsonString18 = '{"event": {"title": "Meetup", "date": "2025-06-30"}}';
  final data18 = jsonDecode(jsonString18);
  print("Event-Datum: ${data18['event']['date']}");

  // Aufgabe 19: Temperatur für morgen anzeigen
  print("\n=== Aufgabe 19 ===");
  final jsonString19 =
      '{"weather": {"today": {"temp": 23}, "tomorrow": {"temp": 25}}}';
  final data19 = jsonDecode(jsonString19);
  print("Temperatur morgen: ${data19['weather']['tomorrow']['temp']}°C");

  // Aufgabe 20: Alle Namen anzeigen
  print("\n=== Aufgabe 20 ===");
  final jsonString20 =
      '{"data": {"employees": [{"name": "Paul"}, {"name": "Lena"}]}}';
  final data20 = jsonDecode(jsonString20);
  print("Mitarbeiter:");
  for (var employee in data20['data']['employees']) {
    print("- ${employee['name']}");
  }
}
