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
    return 'unbekannt';
  }
  print('Suche nach: $artist');
  return artist;
}

String getArtistInfo(String artist) {
  if (artistAndCost.containsKey(artist)) {
    int cost = artistAndCost[artist]!;
    return 'Wir haben $artist:in in unserer App! Kostet pro Stunde: \€${cost}';
  } else {
    return 'Leider haben wir $artist noch nicht in unserer App!';
  }
}

String artBooking(String artist) {
  print('Willst du $artist in deinem Event haben? (ja/nein)');
  String quiz = stdin.readLineSync()?.toLowerCase() ?? '';
  return quiz == 'ja'
      ? 'Super! Wir haben $artist für dich gebucht! Bis bald :=)'
      : 'Schade! Vielleicht beim nächsten Mal!';
}

void main() {
  String artist = searchArtist();
  print(getArtistInfo(artist));
  print(artBooking(artist));
}
