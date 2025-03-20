class Button {
  final String text;
  final int widht;
  final int height;
  final int raduis;
  final int fontSize;
  final int padding;

  Button(
    this.text, {
    required this.widht,
    required this.height,
    required this.raduis,
    required this.fontSize,
    required this.padding,
  });
}

void main() {
  Button b = Button(
    'In den Warenkorb',
    widht: 96,
    height: 32,
    raduis: 4,
    fontSize: 14,
    padding: 8,
  );
}
