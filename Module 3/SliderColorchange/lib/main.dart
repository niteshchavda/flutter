import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SeekbarControllerPage(),
    );
  }
}

class SeekbarControllerPage extends StatefulWidget {
  const SeekbarControllerPage({super.key});

  @override
  State<SeekbarControllerPage> createState() => _SeekbarControllerPageState();
}

class _SeekbarControllerPageState extends State<SeekbarControllerPage> {
  var CurrentValue = 0.0; 
   var BgColor;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 40,
          width: 300,
          color: Colors.white,
          child: Slider(
            value: CurrentValue,
            max: 100,
            divisions: 10,
            onChanged: (value){
              setState(() {
                 CurrentValue = value;
                 if(CurrentValue <= 25)
                 {
                  BgColor = Colors.red;
                 }
                  else if(CurrentValue <= 50)
                 {
                  BgColor = Colors.green;
                 }
                 else if(CurrentValue <= 75)
                 {
                  BgColor = Colors.orange;
                 }
                 else{
                     BgColor = Colors.indigo;
                 }
              });
             
            },
          ),
        ),
      ),
      backgroundColor: BgColor,
    );
    
  }
 
}

