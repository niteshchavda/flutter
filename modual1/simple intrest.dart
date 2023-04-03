import'dart:io';
void main()
{
  print('enter your principal:');
  var p = int.parse(stdin.readLineSync()!);
  print('enter your intrest rate:');
  var r = int.parse(stdin.readLineSync()!);
  print('enter your time:');
  var t = int.parse(stdin.readLineSync()!);
  var si = p * t * r/100 ;
  print('your simple intrest is:$si');

}