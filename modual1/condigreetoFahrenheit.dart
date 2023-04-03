import'dart:io';
void main()
{
  print('enter your degree centigrade:');
  var dc = int.parse(stdin.readLineSync()!);
  var Fahrenheit = (dc * 9 / 5) + 32;
  print('Fahrenheit is:$Fahrenheit');
}