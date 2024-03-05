import 'dart:ffi';
var list = [];
// Array lst = [];
void main(){

  for (var i = 0; i < 10; i++) {
    if(i < 2){
      list.add(i);
      print(list[i]);
      continue;
    }
    list.add(list[i-1] + list[i-2]);
    print(list[i]);
  }
}

