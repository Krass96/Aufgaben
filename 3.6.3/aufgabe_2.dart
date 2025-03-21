class Grocery {
  String name;
  String producer;
  double price;
  double weight;

  Grocery({
    required this.name,
    required this.producer,
    required this.price,
    required this.weight,
  });

  void printPrice() {
    print('$name has: $price price');
  }
}

class Milk extends Grocery {
  int fat;

  Milk({
    required this.fat,
    required super.name,
    required super.producer,
    required super.price,
    required super.weight,
  });

  @override
  void printPrice() {
    print('$name has: $price price and $fat fat.');
  }
}

class Butter extends Grocery {
  int salt;

  Butter({
    required this.salt,
    required super.name,
    required super.producer,
    required super.price,
    required super.weight,
  });

  @override
  void printPrice() {
    print('$name has: $price price and $salt salt.');
  }
}

void main() {
  Milk cowMilk = Milk(
    fat: 3,
    name: 'Cow Milk',
    producer: 'Milk Factory',
    price: 2.99,
    weight: 1,
  );

  cowMilk.printPrice();

  Butter cowButter = Butter(
    salt: 1,
    name: 'Cow Butter',
    producer: 'Butter Factory',
    price: 1.88,
    weight: 0.5,
  );

  cowButter.printPrice();
}
