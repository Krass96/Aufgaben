void main() {
  int age = 13;
  bool hasParentalConstent = true;
  int movieAgeRating = 16;

  if (age >= movieAgeRating || hasParentalConstent && movieAgeRating >= 16)
    print("You can watch the movie");
  else
    print("You can't watch the movie");
}
