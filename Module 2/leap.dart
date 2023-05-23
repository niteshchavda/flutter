
import 'dart:io';

void main()
{
  print("Enter the year:");
  var a = int.parse(stdin.readLineSync()!);

  if(a%4 == 0)
  {

    print("Leap Year");

  }
  else
  {
    print("Not leap year");
  }


}