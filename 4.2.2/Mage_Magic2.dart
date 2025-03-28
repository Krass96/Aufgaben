class Mage {
  String name;
  int mana;

  Mage(this.name, this.mana);

  int castSpell(Mage target) {
    if (mana < 20) {
      print("$name hat nicht genug Mana, um einen Zauber zu wirken.");
      return 0;
    }

    // 20 Mana abziehen
    mana -= 20;

    // 10 Mana hinzufügen, aber nicht über 100
    int healedMana = 10;
    if (target.mana + 10 > 100) {
      healedMana = 100 - target.mana;
      target.mana = 100;
    } else {
      target.mana += 10;
    }

    return healedMana;
  }
}

void main() {
  Mage mage1 = Mage("Gandalf", 50);
  Mage mage2 = Mage("Merlin", 90);

  print("Vor dem Zauber:");
  print("${mage1.name} hat ${mage1.mana} Mana.");
  print("${mage2.name} hat ${mage2.mana} Mana.");

  int transferredMana = mage1.castSpell(mage2);

  print("\nNach dem Zauber:");
  print("${mage1.name} hat ${mage1.mana} Mana.");
  print("${mage2.name} hat ${mage2.mana} Mana.");
  print("${mage1.name} hat ${mage2.name} um $transferredMana Mana geheilt.");
}
