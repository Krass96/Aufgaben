import 'dart:io';

Map<String, int> artistAndCost = {
  'Musiker': 100,
  'Maler': 200,
  'Zauberer': 300,
  'Magier': 400,
  'Komediant': 500,
};

String searchArtist() {
  print('Willkommen zum Artist-Finder!');
  print('Welche Künstler:in suchst du?');
  print('Gib den Namen ein:');
  String artist = stdin.readLineSync() ?? '';
  if (artist.isEmpty) {
    print('Bitte gib einen Künstler oder eine Künstlerin ein!');
    artist = stdin.readLineSync() ?? '';
  }
  print('Suche nach: $artist');
  return artist;
}

String getArtistInfo(String artist) {
  if (artistAndCost.containsKey(artist)) {
    int cost = artistAndCost[artist]!;
    return 'Wir haben $artist in unserer App! Kostet pro Stunde: \€${cost}';
  } else {
    return 'Leider haben wir $artist noch nicht in unserer App!';
  }
}

String artBooking(String artist) {
  print('Willst du $artist in deinem Event haben? (ja/nein)');
  String quiz = stdin.readLineSync()?.toLowerCase() ?? '';
  if (quiz != 'ja' && quiz != 'nein') {
    print('Bitte gib "ja" oder "nein" ein:');
    quiz = stdin.readLineSync()?.toLowerCase() ?? '';
  }
  return quiz == 'ja'
      ? 'Super! Wir haben $artist für dich gebucht! Bis bald :=)'
      : 'Schade! Vielleicht beim nächsten Mal!';
}

// Funktion zur Berechnung der Gesamtkosten
String calculateCost(String artist, int hours) {
  if (artistAndCost.containsKey(artist)) {
    int costPerHour = artistAndCost[artist]!;
    int totalCost = costPerHour * hours;
    return 'Die Gesamtkosten für $artist für $hours Stunden betragen: \€${totalCost}';
  } else {
    return 'Leider haben wir $artist nicht in unserer App.';
  }
}

// Funktion zur Abfrage der Stunden und Berechnung der Kosten
void askForHoursAndCalculateCost(String artist) {
  print('Wie viele Stunden möchtest du $artist buchen?');
  String hoursInput = stdin.readLineSync() ?? '';
  int hours = int.tryParse(hoursInput) ?? 0;
  if (hours > 0) {
    print(calculateCost(artist, hours));
  } else {
    print('Ungültige Eingabe für die Stunden.');
  }
}

void main() {
  String artist = searchArtist();
  print(getArtistInfo(artist));

  // Stundenabfrage und Kostenberechnung
  askForHoursAndCalculateCost(artist);

  // Event-Buchung
  print(artBooking(artist));
}
