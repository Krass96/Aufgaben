class Rectangle {
  // Attribute
  int edgeLength; // x
  int edgeWidth; // y

  Rectangle(this.edgeLength, this.edgeWidth);

  // Method a)
  int calculateCircumference() {
    int x = edgeLength;
    int y = edgeWidth;
    return 2 * (y + x);
  }

  // Method b)
  int calculateArea() {
    int x = edgeLength;
    int y = edgeWidth;
    return y * x;
  }

  // Method c)

  int scale(int f) {
    edgeLength = edgeLength * f;
    return edgeLength;
  }
}
