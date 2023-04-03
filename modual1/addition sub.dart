import 'dart:io';
 void main()
 {
   print("enter your first number:");
   int n1 = int.parse(stdin.readLineSync()!);
   print('enter your second number:');
   int n2 = int.parse(stdin.readLineSync()!);
   int sum = n1 + n2;
   int sub = n1 - n2;
   int mul = n1 * n2;
   var div = n1 / n2;
   int mod = n1 % n2;

   print('sum is $sum');
   print('sub is $sub');
   print('mul is $mul');
   print('div is $div');
   print('mod is $mod');
 }