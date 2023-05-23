import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: RadioButtonWidget(),
    );
  }
}

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget
({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  var colour = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            RadioListTile(
              value: Colors.red, 
              groupValue: colour ,
              onChanged: (value){
                setState(() {
                    colour = value!;
                  }
                );
              },
              title: Text("Red"),
            ),
            RadioListTile(
              value: Colors.orange, 
              groupValue: colour ,
              onChanged: (value){
                setState(() {
                    colour = value!;
                  }
                );
              },
              title: Text("Orange"),
            )
          ],
        ),
      ),
      backgroundColor: colour,
    );
  }
}


