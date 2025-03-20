class Autor {
  String name;
  int birthYear;

  Autor(this.name, this.birthYear);
}

class Buch {
  String titel;
  int pages;
  Autor autor;

  Buch(this.titel, this.pages, this.autor);
}

void main() {
  Autor a = Autor('Wilhelms Busch', 1832);
  Buch b = Buch('Max and Moritz', 53, a);

  print('Titel des Buches: ${b.titel}');
  print('Seitenanzahl: ${b.pages}');
  print('Name des Autors: ${b.autor.name}');
}
