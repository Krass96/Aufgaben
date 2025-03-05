enum Charakter { warrior, mage, archer }

enum Day { morning, noon, evening, night }

enum Weather { sunny, rainy, stormy }

void main() {
  int baseAtack = 50;

  switch (Charakter.warrior) {
    case Day.morning:
      baseAtack + 10;
    case Day.noon:
      baseAtack - 5;
    default:
      baseAtack;
  }
  switch (Charakter.mage) {
    case Weather.stormy:
      baseAtack + 10;
    case Weather.sunny:
      baseAtack - 5;
    default:
      baseAtack;
  }
  switch (Charakter.archer) {
    case Weather.sunny:
      baseAtack + 10;
    case Weather.rainy:
      baseAtack - 5;
    default:
      baseAtack;
  }
  Charakter.archer.toString();
  Weather.stormy.toString();

  print('Dein $Charakter hat bei $Weather einen Angriffswert von $baseAtack');
}
