import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatefulWidget {
  

  @override
  State<_HomeScreen> createState() => __HomeScreenState();
}

class __HomeScreenState extends State<_HomeScreen> {
  var checked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hide Text"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckboxListTile(
                value: checked ,
                onChanged: (value){
                  setState(() {
                    checked = value!;
                  });
                },
                title: Text("Hide"),
              ),
              SizedBox(
                height: 20,
              ),
              Visibility(
                child: Text("Hide/Shown",style: TextStyle(fontSize: 30),),
                visible: checked,
              )
            ],
          ),
        ),
      ),
    );
  }
}
 