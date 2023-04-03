import 'dart:io';
void main()
{
  print('enter your number:');
  var n = int.parse(stdin.readLineSync()!);
  int i,flag = 0;
  if (n == 0 || n == 1)
    flag = 1;
  for (i = 2; i <= n / 2; ++i)
  {
    if (n % i == 0)
    {
      flag = 1;
      break;
    }
  }
  if (flag == 0)
  {
    print(" is a prime number.");
  }
  else
  {
    print("is not a prime number.");
  }
}