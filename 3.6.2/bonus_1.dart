class Person {
  //Atribute

  final String name;
  final int age;

  //Konstruktor
  Person(this.name, this.age);
}

void main() {
  Person a = Person('Dian', 20);
  print(a.name);
  print(a.age);
}
