import 'dart:io';
void main()
{
  print ('enter your number:');
  var num = int.parse(stdin.readLineSync()!);
  int square = num * num;
  int cube  = num * num * num;
  print('square is:$square\ncube is:$cube');

}