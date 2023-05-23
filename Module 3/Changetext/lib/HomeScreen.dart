import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        "Change text as per input"
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Eneter any thing",
              ),
              onChanged: (value){
                setState(() {
                  text = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(text,style: TextStyle(fontSize: 30),)
          ]
          ),
        ),
      ),
    );
  }
}