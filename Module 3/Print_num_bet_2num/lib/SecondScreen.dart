import 'package:flutter/material.dart';

class PrintNumberBetween2 extends StatefulWidget {

  final int num1;
  final int num2;

  PrintNumberBetween2(this.num1,this.num2);

  @override
  State<PrintNumberBetween2> createState() => _PrintNumberBetween2State();
}

class _PrintNumberBetween2State extends State<PrintNumberBetween2> {
  var str = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PrintNumber"),
        backgroundColor: Colors.orange,
       ),body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Text(
              "${str}"
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                str = LOOPString();
              });
            }, child:Text("Click",style: TextStyle(fontSize: 20),))
          ],
        ),
       ),

    );
  }
  String LOOPString()
  {
    String a = "";
    for(int i = widget.num1;i <= widget.num2;i++)
    {
      a = "$a$i";
    }
    return a;
  }
}