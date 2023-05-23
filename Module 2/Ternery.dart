
void main()
{

  int a = 10;
  int b = 20;
  int c = 40;

  (a > b && a > c)? print("${a} is maximum"):(b > a && b > c)? print("${b} is maximum"):(c > a && c > b)? print("${c} is maximum"):print("all are same");



}