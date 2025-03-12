void main() {
  reverseInitials('Krasimir', 'Varnaliev');
  reverseInitials('Kardelen', 'Kaplan');
  reverseInitials('Grace', 'Shadmi');
}

void reverseInitials(String firstName, String lastName) {
  String f = firstName[firstName.length - 1].toUpperCase();
  String l = lastName[lastName.length - 1].toUpperCase();
  print('$f. $l.');
}
