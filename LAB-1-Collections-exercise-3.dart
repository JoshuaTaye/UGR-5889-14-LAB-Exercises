void main(){
  List lst1 = [];
  List removeDuplicates(List lst){
    for (int i=0; i<lst.length; i++){
      if ((lst1.contains(lst[i]))) {
        continue;
      }
      else{
        lst1.add(lst[i]);
      }
      }
    return lst1 ;
    }
  }
