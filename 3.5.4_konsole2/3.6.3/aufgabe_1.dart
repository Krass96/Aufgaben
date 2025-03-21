class Tool {
  String name;
  String type;
  int price;

  Tool({required this.name, required this.type, required this.price});
}

class Hammer extends Tool {
  int weight;

  Hammer({
    required this.weight,
    required super.name,
    required super.type,
    required super.price,
  });

  void printWeight() {
    print('$type has: $weight weight');
  }
}

class Saw extends Tool {
  int teeth;

  Saw({
    required this.teeth,
    required super.name,
    required super.type,
    required super.price,
  });

  void printTeeth() {
    print('$type has: $teeth teeth');
  }
}

void main() {
  Hammer clawHammer = Hammer(
    type: 'Claw Hammer',
    weight: 10,
    name: 'Hammer',
    price: 20,
  );

  clawHammer.printWeight();

  Saw handSaw = Saw(type: 'Hand Saw', teeth: 10, name: 'Saw', price: 10);

  handSaw.printTeeth();
}
