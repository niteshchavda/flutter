void main()
{

  int a = 10;
  int b = 20;
  int c = 5;

  if (a > b && a > c) {
    print("${a} is maximum");
  }
  else if (b > a && b > c) {
    print("${b} is maximum");
  }
  else if (c > a && c > b) {
    print("${c} is maximum");
  }
  else{
    print("All are same");
  }


}