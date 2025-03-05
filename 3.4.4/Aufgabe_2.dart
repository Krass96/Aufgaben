void main() {
  List<String> sex = ['male', 'female'];
  int age = 20;

  switch (sex) {
    case ['male']:
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
          print("Im Schnitt 181,4m");
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
          print("Im Schnitt 181,3m");
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 180,4m");
        default:
          print("Kein Durschnittswerte verfügbar");
      }
    case ['female']:
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
          print("Im Schnitt 167,5m");
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
          print("Im Schnitt 167,3 m");
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 167,2");
        default:
          print("Kein Durschnittswerte verfügbar");
      }
    default:
      print("Kein Geschlecht ausgewählt");
  }
}
