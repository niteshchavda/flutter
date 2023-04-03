import 'dart:io';
void main()
{
  print('enter your your:');
  var y = int.parse(stdin.readLineSync()!);
  if((y%100==0&&y%400==0)||(y%100!=0&&y%4==0))
    {
    print("year is leap year");
    }

  else
  {
    print("not leap year");
  }
}