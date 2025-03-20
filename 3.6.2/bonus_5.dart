import 'bonus_3.dart';

void main() {
  Rectangle r = Rectangle(5, 9);

  r.scale(2);
  print(r.edgeLength);
  print(r.edgeWidth);

  r.scale(3);
  print(r.edgeLength);
  print(r.edgeWidth);
}
