int maxNumber(int a, int b, int c) {
  return a > b ? (a > c ? a : c) : (b > c ? b : c);
}

void main() {
  print(maxNumber(5, 10, 8)); // Example: the largest is 10
}
