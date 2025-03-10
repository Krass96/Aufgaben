void main() {
  String word = "abba";
  bool isPalindrom = true;

  for (int i = 0; i < word.length; i++) {
    if (word[i] != word[i]) {
      isPalindrom = false;
    }
  }

  if (isPalindrom) {
    print('$word ist ein Palindrom');
  } else {
    print('$word ist kein Palindrom');
  }
}
