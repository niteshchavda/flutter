import'dart:io';
void main()
{
  print('enter subject 1 marks:');
  var s1 = int.parse(stdin.readLineSync()!);
  print('enter subject 2 marks :');
  var s2 = int.parse(stdin.readLineSync()!);
  print('enter subject 3 marks:');
  var s3 = int.parse(stdin.readLineSync()!);
  print('entersubject 4 marks:');
  var s4 = int.parse(stdin.readLineSync()!);
  print('enter subject 5 marks:');
  var s5 = int.parse(stdin.readLineSync()!);

  double percentage = (s1 + s2 + s3 + s4 + s5 )/500 * 100;
  print('percentage is:$percentage');


}