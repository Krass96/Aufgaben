import 'dart:io';

void main() {
  // Nutzerbegrüßung
  print('Willkommen zum Artist-Finder!');
  print('Welche Künsler:in suchst du?');

  // Liste mit Kategorien
  Map<String, int> artistCost = {
    'musiker': 100,
    'maler': 200,
    'zauberer': 300,
    'magier': 400,
    'komediant': 500,
  };

  String artist = stdin.readLineSync() ?? '';
  print('Suche nach: $artist');
  if (artist.isEmpty) {
    print('Bitte gib einen Künstler oder eine Künstlerin ein!');
    return;
  }

  // Suche nach Kategorie

  switch (artist) {
    case 'musiker':
      print('Wir haben Musiker:in in unserer App!');
    case 'maler':
      print('Wir haben Maler:in in unserer App!');
    case 'zauberer':
      print('Wir haben Zauberer:in in unserer App!');
    case 'magier':
      print('Wir haben Magier:in in unserer App!');
    case 'komediant':
      print('Wir haben Komediant:in in unserer App!');
    default:
      print('Leider haben wir $artist noch nicht in unserer App!');
  }
  // Suche nach Preis und Bestätigung

  print('Willst du $artist in deinem Event haben?');
  if (stdin.readLineSync() == 'ja') {
    print('Super! Das kostet ${artistCost[artist]} € pro Stunde!');
    if (stdin.readLineSync() == 'ok') {
      print(
        'Prima! Dein Event mit $artist bestimmt ein Erfolg!'
        ' Viel Spaß!',
      );
    }
  } else {
    print('Schade! Vielleicht ein anderes Mal!');
  }
}
