void divideNumbers(int a, int b) {
  if (b == 0) {
    throw ArgumentError('Cannot divide by zero');
  }

  int result = a ~/ b;
  print('Result: $result');
}

void main() {
  try {
    divideNumbers(10, 0);
  } catch (e) {
    if (e is ArgumentError) {
      print('ArgumentError occurred: $e');
    } else {
      print('An exception occurred: $e');
    }
  }
}
