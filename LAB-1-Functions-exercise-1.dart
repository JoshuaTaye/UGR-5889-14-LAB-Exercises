void main() {
  num average(List lst) {
    num sum = 0;
    for (int i = 0; i < lst.length; i++) {
      sum = sum + lst[i];
    }
    num avg = sum / (lst.length);
    return avg;
  }
}
