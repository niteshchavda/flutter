import 'dart:io';
void main()
{

  print('enter your radius');
  var r = int.parse(stdin.readLineSync()!);
  var area = 3.14 * r * r;
  print('area of circle is:$area');
}

