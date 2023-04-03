import'dart:io';
void main()
{
  print('enter a digit:');
  var digit = int.parse(stdin.readLineSync()!);
  if(digit >= 0)
    {
      print('your value is positive:');
    }
  else
    {
      print('your value is nagative:');
    }
}