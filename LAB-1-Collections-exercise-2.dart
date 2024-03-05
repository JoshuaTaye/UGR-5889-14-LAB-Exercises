void main(){
  void mapList(Map<String, String> map){
    for (var i in map.keys){
      print("Key: $i");
      var val = map[i];
      print("Value: $val");
    }
  }
}
