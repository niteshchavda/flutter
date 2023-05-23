
import 'dart:io';

void main()
{
  print("Enter the value :");
  int a = int.parse(stdin.readLineSync()!);
  int i=1,c=0;
  
  for (i=1;i<=a;i++)
  {
    if(a%i == 0)
    {
      c++;
    }
  }
  
  if(c==2)
  {
    print("Prime");
  }
  else{
    print("Not prime");
  }
  
  
}