import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var MyColor = Colors.yellowAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.yellow,
        title: Text("Change BgColor"),
      ),
      body: Center(
        child: ElevatedButton(
          child:Text("Click"),
          onPressed: () {
            setState(() {
              if(MyColor == Colors.yellowAccent){
                MyColor = Colors.orangeAccent;
              }
              else{
                MyColor = Colors.yellowAccent;
              }
            });

            
          },
        ),
      ),
      backgroundColor: MyColor,
      
    );
  }
}