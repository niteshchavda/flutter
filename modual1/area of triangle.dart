import'dart:io';
void main()
{
  print('enter your base:');
  var b =  int.parse(stdin.readLineSync()!);
  print('enter hight:');
  var h =  int.parse(stdin.readLineSync()!);
  var area = h * b / 2;
  print('arae of trianle is:$area');

}