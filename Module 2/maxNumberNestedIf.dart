void main(List<String> args) {
  int a = 10;
  int b = 20;
  int c = 5;

  if (a > b && a > c) {
    print("${a} is maximum");
  } else {
    if (b > c && b > a) {
      print("${b} is maximum");
    } else {
      if (c > b && c > a) {
        print("${c} is maximum");
      } else {
        print("All are same");
      }
    }
  }
}
