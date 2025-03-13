void main() {
  print(sumList([1, 2, 3]));
  print(sumList([10, 20, 30]));
  print(sumList([-10, 20, -30]));
}

int sumList(List<int> nums) {
  int sum = 0;
  for (int num in nums) {
    sum += num;
  }
  return sum;
}
