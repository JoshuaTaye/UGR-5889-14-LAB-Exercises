int max = 0;
int Maximum(List a) {
  if (a.length == 0 ) {
    throw Exception('List is Empty');
  }
  for (int i = 0; i < a.length; i++) {
      if (a[i] > max) {
        max = a[i];
      }
    }
    return max;
}

void main() {
  try {
    Maximum([]);
  } catch (e) {
    print('An exception occurred: $e');
  }finally{
    print("This code executes no matter what");
  }
}
