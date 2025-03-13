void main() {
  print(sumList([1, 2, 3]));
  print(sumList([10, 20, 30]));
  print(sumList([-5, -25, -30]));
}

double sumList(List<int> nums) {
  int sum = 0;
  double averageSum = 0;
  for (int num in nums) {
    sum += num;
  }
  averageSum = sum / nums.length;
  return averageSum;
}
