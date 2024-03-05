Future <void> add(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print(a + b);
}
void main() async{
  await (add(3,4));
}
